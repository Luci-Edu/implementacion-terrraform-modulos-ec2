provider "aws" {
  region = "us-east-1"
}

module "red" {
  source = "../../modules/vpc"

  vpc_name             = var.vpc_name
  cidr_block           = var.cidr_block
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.10.0/24", "10.0.11.0/24"]
  availability_zones   = ["us-east-1a", "us-east-1b"]
  environment          = var.environment
  enable_nat_gateway   = false

  tags_extra = {
    Proyecto = "evaluacion-formativa"
    Alumno   = "Luci-Edu"
  }
}

module "servidor_web" {
  source = "../../modules/ec2"

  instance_name = var.instance_name
  instance_type = var.instance_type
  subnet_id     = module.red.public_subnet_ids[0]
  vpc_id        = module.red.vpc_id
  environment   = var.environment
  allowed_ports = var.allowed_ports
  allowed_cidr  = "0.0.0.0/0"

  tags_extra = {
    Proyecto = "evaluacion-formativa"
    Alumno   = "Luci-Edu"
  }
}
