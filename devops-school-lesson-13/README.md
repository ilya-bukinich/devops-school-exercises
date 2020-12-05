# devops-school-lesson-13

## Exercise
Написать Ansible playbook, который разворачивает 2 ноды в AWS EC2: сборочную и продовую. На сборочной ноде происходит сборка Java проекта, полученный артефакт передается на продовую ноду и на ней запускается

## Requirements
* on host: ansible, boto

## How to start
`git clone https://github.com/ilya-bukinich/devops-school-exercises.git && cd devops-school-exercises/devops-school-lesson-13/`  
`ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook devops-school-lesson-13.yml --ask-vault-pass`

## How to check
Follow link http://localhost:8080/app/
* localhost is [prod] node
