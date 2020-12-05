# devops-school-lesson-9

## Exercise
Write Ansible roles that prepare a build and production environment on 2 nodes. The assembly site assembles the project, the production site launches.

## Requirements
* on host: python, ansible
* on nodes [build][prod]: python

## How to start
`git clone https://github.com/ilya-bukinich/devops-school-exercises.git && cd devops-school-exercises/devops-school-lesson-9/`  
`ansible-playbook --ask-become-pass devops-school-lesson-9.yml`  

## How to check
Follow link http://localhost:8080/app/
* localhost is [prod] node
