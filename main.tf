provider "aws" {
  region = var.REGION
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket = "personal-resource-bucket"
    key    = "terraform/state"
    region = "ap-south-1"
  }
}

module "vpc" {
  source = "./modules/vpc"
}

module "rds" {
  source      = "./modules/rds"
  DB_USERNAME = var.DB_USERNAME
  DB_NAME     = var.DB_NAME
  DB_PASSWORD = var.DB_PASSWORD
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = [module.vpc.public_a_id, module.vpc.public_b_id]
}
