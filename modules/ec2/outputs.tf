output "instance_id" {
  description = "ID unico de la instancia EC2 creada"
  value       = aws_instance.this.id
}

output "instance_public_ip" {
  description = "IP publica de la instancia"
  value       = aws_instance.this.public_ip
}

output "instance_private_ip" {
  description = "IP privada de la instancia"
  value       = aws_instance.this.private_ip
}

output "instance_arn" {
  description = "ARN de la instancia EC2"
  value       = aws_instance.this.arn
}

output "security_group_id" {
  description = "ID del Security Group creado"
  value       = aws_security_group.this.id
}

output "instance_url" {
  description = "URL HTTP del servidor"
  value       = "http://${aws_instance.this.public_ip}"
}
