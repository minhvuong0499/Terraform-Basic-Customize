data "aws_vpc" "vpc1" {
  filter {
    name   = "tag:Name"
    values = ["VPC-1"]
  }
}
output "vpc-test" {
  value = data.aws_vpc.vpc1
}
