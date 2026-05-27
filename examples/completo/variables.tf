variable "vpc_name" {
  type = string
}

variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "instance_name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "allowed_ports" {
  type    = list(number)
  default = [80, 22]
}
