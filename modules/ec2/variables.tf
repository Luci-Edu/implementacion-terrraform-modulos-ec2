variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia"
  type        = string
  default     = "t2.micro"
  validation {
    condition     = contains(["t2.micro", "t2.small", "t3.micro", "t3.small"], var.instance_type)
    error_message = "Tipo de instancia no permitido en AWS Academy."
  }
}

variable "ami_id" {
  description = "ID de la AMI"
  type        = string
  default     = "ami-0c101f26f147fa7fd"
}

variable "subnet_id" {
  description = "ID de la subred"
  type        = string
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

variable "user_data" {
  description = "Script de inicializacion de la instancia"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "ID de la VPC donde se creara el Security Group"
  type        = string
}

variable "allowed_ports" {
  description = "Lista de puertos TCP de entrada permitidos"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "allowed_cidr" {
  description = "CIDR desde el que se permite el trafico"
  type        = string
  default     = "0.0.0.0/0"
}
