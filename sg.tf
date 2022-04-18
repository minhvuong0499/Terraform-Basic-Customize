resource "aws_security_group" "sg-app" {
  name = "allow app"
  vpc_id = data.aws_vpc.vpc1.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [data.aws_vpc.vpc1.cidr_block]
    #ipv6_cidr_blocks = [aws_vpc.vpc1.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_http"
  }
}
/* import sg data source
variable "security_group_id" {}

data "aws_security_group" "selected" {
  id = "${var.security_group_id}"
}
*/