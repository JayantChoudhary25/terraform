terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS Provider Configuration
provider "aws" {
  region = "ap-south-1" // Specify the AWS region where resources will be created
}

# AWS CodeCommit Repository Resource
# resource "aws_codecommit_repository" "test" {
#   repository_name = "Enter Repository Name"
#   description     = "Enter Repository Description"
# }

# Define a list of repositories with their names and descriptions
variable "repositories" {
  default = [
    {
      name        = "Enter Repository Name"
      description = "Description for Repository"
    },
    {
      name        = "Enter Repository Name"
      description = "Description for Repository"
    },
  ]
}

# Create CodeCommit repositories using a loop
resource "aws_codecommit_repository" "repositories" {
  count = length(var.repositories)

  repository_name = var.repositories[count.index].name
  description     = var.repositories[count.index].description
}
