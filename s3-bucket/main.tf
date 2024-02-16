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

# AWS s3 Bucket Resource
resource "aws_s3_bucket" "bucket" {
  bucket = "your-bucket-name" // Enter Bucket Name

  tags = {
    Name        = "My bucket"
  }
}