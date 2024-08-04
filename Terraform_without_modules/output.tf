output "public_ip_address" {
  value=aws_instance.Example.public_ip
}

output "instance_state" {
  value=aws_instance.Example.instance_state
}

output "instance_ID" {
  value=aws_instance.Example.id
}
output "tags" {
  value=aws_instance.Example.tags_all
}