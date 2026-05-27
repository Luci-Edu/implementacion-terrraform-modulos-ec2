variable "vpc_cidr" {
  description = "Rango de direcciones IP para la VPC en formato CIDR (ej. 10.0.0.0/16)."
  type        = string
}

variable "nombre_entorno" {
  description = "Etiqueta para identificar el entorno (ej: dev, staging, prod)."
  type        = string
}

variable "public_subnets" {
  description = "Lista de rangos CIDR para las subredes públicas."
  type        = list(string)
}
