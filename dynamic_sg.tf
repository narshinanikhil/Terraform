resource "aws_security_group" "mysg" {
  name        = "dynamic_sg"
  description = "This is for security group creation using terrafrom"

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

variable "ports" {
  type    = list(any)
  default = [22, 443, 80, 8080, 8081, 9000, 3306]
}

