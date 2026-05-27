variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "cidr_block" {
  description = "Bloque CIDR principal de la VPC"
  type        = string
  default     = "10.0.0.0/16"
  validation {
    condition     = can(cidrnetmask(var.cidr_block))
    error_message = "El cidr_block no tiene formato CIDR válido."
  }
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDRs para subredes públicas"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Lista de CIDRs para subredes privadas"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "availability_zones" {
  description = "Zonas de disponibilidad donde crear las subredes"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "enable_nat_gateway" {
  description = "Crear NAT Gateway (NO usar en AWS Academy)"
  type        = bool
  default     = false
}

variable "environment" {
  description = "Ambiente: dev, staging o prod"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "El ambiente debe ser dev, staging o prod."
  }
}

variable "tags_extra" {
  description = "Etiquetas adicionales"
  type        = map(string)
  default     = {}
}