#exer-1
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

# # Configure the AWS Provider
# provider "aws" {
#   region = "eu-central-1"
#   profile = "data_academy"
# }

#exer-2 & 3

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "da7-terraform-state"
    key    = "ctw03646"
    region = "eu-central-1"
    profile = "data_academy"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "eu-central-1"
  profile = "data_academy"
}



