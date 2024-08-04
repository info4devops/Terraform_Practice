#variables file


variable "ami_value" {
  description = "Value for AMI"
  
}

variable "instance_type_value" {
  description = "Value for instance type"
  
}

variable "subnet_id_value" {
  description = "Value for subnet id"
  
}

variable "key_name" {
  description = "Value for key name"
  
}
variable "tags" {
  description = "Value for tag"
  type = map(string)
  default = {
    Name="Test EC2"
  }
  
}