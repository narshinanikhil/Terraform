resource "aws_instance" "myinstance" {
  for_each = var.myvalues

  ami           = "ami-096ef200a877f36af"
  instance_type = each.value.itype
  tags = {
    Name = each.value.iname
  }
  root_block_device {
    volume_size = each.value.volume
  }
}
