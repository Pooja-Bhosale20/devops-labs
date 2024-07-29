# devops-labs

# For S3 State Folder
+ Execute:
    - Export AWS Credentials
    - terrraform init
    - terraform plan
    - terraform apply -auto-approve
    - uncomment backend.tf 
    + Move tfstate generated for s3_state to actual created s3 bucket
    - terraform init -migrate-state ( Enter "Yes" )
    


# For VPC Folder
+ Execute:
    - Export AWS Credentials
    - terraform init
    - terraform plan -var-file='..\env-variables\dev.tfvars'
    - terraform apply -var-file='..\env-variables\dev.tfvars' -auto-approve