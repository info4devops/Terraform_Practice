provider "aws" {
  region = "us-east-1" #set your desired AWS region
    
}

# To create EC2 instance
resource "aws_instance" "Example-EC2" {
  ami= "ami-080e1f13689e07408" # Specify an appropriate AMI ID
  instance_type = "t2.micro"
  subnet_id = "subnet-08c165d15c9e699db" # specify the subnet ID
  key_name = "mytest" # Specify the key-value pair
  tags = {
    Name = "My-Example-EC2-Instance"
    }
}

# To Create S3 bucket
resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "vamsi-s3-demo-xyz"
  
}

# To create DynaboDB for terraform lock
resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }
  
}

