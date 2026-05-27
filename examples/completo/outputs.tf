output "vpc_id" {
  description = "ID de la VPC creada"
  value       = module.red.vpc_id
}

output "subredes_publicas" {
  description = "IDs de las subredes publicas"
  value       = module.red.public_subnet_ids
}

output "ip_servidor" {
  description = "IP publica del servidor web"
  value       = module.servidor_web.instance_public_ip
}

output "url_servidor" {
  description = "URL HTTP del servidor"
  value       = module.servidor_web.instance_url
}
