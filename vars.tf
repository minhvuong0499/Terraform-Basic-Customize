variable "aws_ami" {
  type    = string
  default = "ami-0971b4b88a87adeef"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}
variable "vpc_id" {
    type = string
    default = "vpc-06bf13d171d4f9ae8"
}