# devops-school-lesson-8

## Exercise
Написать playbook, который подготавливает сборочное и продовое окружение на 2-х нодах. На сборочной ноде производится сборка проекта, на продовой - запуск

## Requirements
* on host: python, ansible
* on nodes [test][prod]: python

## How to start
`git clone https://github.com/ilya-bukinich/devops-school-exercises.git && cd devops-school-exercises/devops-school-lesson-8/`  
`ansible-playbook --ask-become-pass devops-school-lesson-8.yml`  

## How to check
Follow link http://localhost:8080/app/
* localhost is [prod] node
