output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = aws_instance.main[*].id
}

output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = aws_lb.main.dns_name
}

output "security_group_id" {
  description = "ID of the EC2 security group"
  value       = aws_security_group.main.id
}
