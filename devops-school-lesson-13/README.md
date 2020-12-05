# devops-school-lesson-13

## Exercise
Write an Ansible playbook that deploys 2 nodes in AWS EC2: assembly and production. On the build node, the Java project is builded, the resulting artifact is transferred to the production node and runs on it

## Requirements
* on host: ansible, boto

## How to start
`git clone https://github.com/ilya-bukinich/devops-school-exercises.git && cd devops-school-exercises/devops-school-lesson-13/`  
`ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook devops-school-lesson-13.yml --ask-vault-pass`

## How to check
Follow link http://localhost:8080/app/
* localhost is [prod] node
