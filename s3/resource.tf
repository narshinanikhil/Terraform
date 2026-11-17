resource "aws_instance" "myserver" {
  tags = {
    Name = "new-instance"
  }
  ami           = "ami-096ef200a877f36af"
  instance_type = "c7i-flex.large"
}
