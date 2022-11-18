provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-2"
}
provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-2"
}

resource "aws_ecr_repository" "my_first_ecr_repo" {
  name = "my-first-ecr-repo"
}