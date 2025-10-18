output "instance_public_ip" {
  description = "Public IP of the DevOps server"
  value       = aws_instance.devops_server.public_ip
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.devops_server.id
}
