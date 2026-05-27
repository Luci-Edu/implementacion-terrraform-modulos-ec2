variable "tipo_instancia" {
  description = "Tamaño de la instancia EC2. Define la CPU y memoria (ej: t2.micro)."
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "ID de la VPC donde se desplegará la instancia y el Security Group."
  type        = string
}

variable "subnet_id" {
  description = "ID de la subred específica donde residirá el servidor."
  type        = string
}

variable "tags" {
  description = "Mapa de etiquetas para aplicar a todos los recursos del módulo."
  type        = map(string)
}
