# Configuring S3 as remote backend to save terraform state file
terraform {
  backend "s3" {
    bucket = "vamsi-s3-demo-xyz"
    key = "vamsi/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform_lock"
    
  }
}