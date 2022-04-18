resource "aws_instance" "app" {
  count         = 2
  ami           = var.aws_ami
  instance_type = var.instance_type
  tags = {
    "Name" = "Test ${count.index}"
  }
}