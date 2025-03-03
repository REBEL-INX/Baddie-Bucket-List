terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.85.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
  # Configuration options
}


resource "aws_s3_bucket" "example" {
  bucket = "my-baddie-bucket-001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_object" "examplebucket_object" {
  key    = "Baddie Bucket List"
  bucket = aws_s3_bucket.example.id
  source = "Baddie Bucket List.txt"
}