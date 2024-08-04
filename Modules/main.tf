module "ec2_instance" {
  source = "./Modules_Practice/ec2_instance"
  ami_value = "ami-080e1f13689e07408"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-08c165d15c9e699db"
  key_name = "mytest"
  tags = {
    Name="Vamsi-EC2"
    }

}
