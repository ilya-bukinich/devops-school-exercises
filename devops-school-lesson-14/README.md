# devops-school-lesson-14

## Exercise
С помощью Terraform поднять 2 инстанса в облаке. «Сборочный» инстанс собирает Java приложение. «Продовый» инстанс запускает приложение. В качестве репозитория использовать нативный сервис облачного провайдера

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
