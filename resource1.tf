resource "aws_instance" "myinstance" {
  tags = {
    Name = "terraform_instance"
  }
  ami = "ami-0add9dc62cfab3c11"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  root_block_device  {
    volume_size = 10
  }
}
