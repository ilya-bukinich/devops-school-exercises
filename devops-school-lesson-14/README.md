# devops-school-lesson-14

## Exercise
Launch 2 instances in the cloud using Terraform. A "build" instance builds a Java application. The “prod” instance launches the application. Use the native cloud provider service as a repository

## Requirements
* on host: terraform

## How to start
```
git clone https://github.com/ilya-bukinich/devops-school-exercises.git && cd devops-school-exercises/devops-school-lesson-14/   
terraform init
terraform plan -out plan.tf
terraform apply plan.tf
```

## How to check
Follow link http://localhost:8080/app/
* localhost is [prod] node
