resource "aws_security_group" "this" {
  name        = "${var.instance_name}-sg"
  description = "Security Group para ${var.instance_name}"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.allowed_ports
    content {
      description = "Puerto ${ingress.value} TCP"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.allowed_cidr]
    }
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.instance_name}-sg"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}
