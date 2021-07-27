terraform {
  # required_version = "0.14.8"



  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.32.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }

  backend "s3" {
    bucket = "deivsfsousa" 
    key    = "dev/auto-scaling/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region     = var.aws_region
  profile    = var.aws_profile
  access_key = var.access_key
  secret_key = var.secret_key
  
}
