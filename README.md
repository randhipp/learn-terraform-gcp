This repo is to track learning terraform using
[https://learn.hashicorp.com/tutorials/terraform/google-cloud-platform-build?in=terraform/gcp-get-started](https://learn.hashicorp.com/tutorials/terraform/google-cloud-platform-build?in=terraform/gcp-get-started)

With additional read from main.tfvars

How to run :
- update location of your `credential.json`
- update your `main.tfvars`
- run: 
```
terraform apply -var-file="main.tfvars"
```

How to stop :
- run:
```
terraform destroy -var-file="main.tfvars"
```