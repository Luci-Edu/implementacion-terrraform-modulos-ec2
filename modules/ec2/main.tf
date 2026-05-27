resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.this.id]

  user_data = var.user_data

  tags = merge(
    {
      Name        = var.instance_name
      Environment = var.environment
      ManagedBy   = "terraform"
    },
    var.tags_extra
  )
}
