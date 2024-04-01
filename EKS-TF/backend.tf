terraform {
  backend "s3" {
    bucket         = "testcfdev1"
    region         = "us-east-1"
    key            = "e2e-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    encrypt        = false
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
