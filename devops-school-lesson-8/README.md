# devops-school-lesson-8

## Exercise
Write a playbook that prepares the build and production environment on 2 nodes. On the build node, the project is builded, on the production node - the launch

## Requirements
* on host: python, ansible
* on nodes [test][prod]: python

## How to start
`git clone https://github.com/ilya-bukinich/devops-school-exercises.git && cd devops-school-exercises/devops-school-lesson-8/`  
`ansible-playbook --ask-become-pass devops-school-lesson-8.yml`  

## How to check
Follow link http://localhost:8080/app/
* localhost is [prod] node
