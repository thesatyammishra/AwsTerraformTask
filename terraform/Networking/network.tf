# Providing a reference to our default VPC
resource "aws_default_vpc" "default_vpc" {
}

provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-2"
}
# Providing a reference to our default subnets
resource "aws_vpc" "main" {
cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "private-subnet1" {
vpc_id = "${aws_vpc.main.id}"
cidr_block = "10.0.2.0/24"
availability_zone = "eu-west-2a"
}

resource "aws_subnet" "private-subnet2" {
vpc_id = "${aws_vpc.main.id}"
cidr_block = "10.0.3.0/24"
availability_zone = "eu-west-2b"
}

resource "aws_subnet" "private-subnet2" {
vpc_id = "${aws_vpc.main.id}"
cidr_block = "10.0.4.0/24"
availability_zone = "eu-west-2c"
}