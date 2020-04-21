---
### provision AWS EC2 instance
- hosts: ui
  #connection: local
  gather_facts: false
  become_method: sudo
  become_user: ubuntu
  user: ubuntu
  # pre_tasks:
  #   - include_vars: variables.yml
  tasks:
  
     - name: Upgrade all apt packages
       apt: upgrade=dist force_apt_get=yes

    - name: Install npm and git
      apt:
        pkg:
          - npm
          - git

    - name: clone repository
      git:
        repo: https://github.com/gaearaz/movie-analyst-ui.git
        dest: /home/ubuntu/ui
        clone: yes

    - name: execute npm install command
      npm:
        path: /home/ubuntu/movie-analyst-ui

    - name: execute npm run command using shell
      shell: node /home/ubuntu/movie-analyst-ui/server.js
