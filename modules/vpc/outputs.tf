output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "Bloque CIDR de la VPC"
  value       = aws_vpc.this.cidr_block
}

output "public_subnet_ids" {
  description = "Lista de IDs de subredes publicas"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Lista de IDs de subredes privadas"
  value       = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  description = "ID del Internet Gateway"
  value       = aws_internet_gateway.this.id
}

output "public_route_table_id" {
  description = "ID de la tabla de rutas publica"
  value       = aws_route_table.public.id
}
