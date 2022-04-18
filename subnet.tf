data "aws_subnet" "subnet3" {
  filter {
    name = "tag:Name"
    values = ["Subnet3"]
  }
}

output "vpc1" {
  value = data.aws_subnet.subnet3
  }