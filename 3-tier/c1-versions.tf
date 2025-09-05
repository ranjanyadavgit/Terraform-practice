terraform {
      required_version = ">=1.6.2"

     required_providers {
       source = "hashicorp/aws"
       version = "6.11.2"
  }

    provider "aws" {
    region=var.aws_region
    profile=default
    }

  

   
     
