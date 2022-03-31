output "public_ip" {
  description = "Public_IP of your Instance."
  value = aws_instance.ec2.public_ip
}

output "instance_id" {
  description = "Instance ID."
  value = aws_instance.ec2.id
}