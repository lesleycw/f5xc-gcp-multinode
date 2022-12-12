terraform {
  required_version = ">= 1.3.0"
  
  backend "s3" {
    bucket  = "f5-xc-terraform"
    region  = "us-east-1"
    encrypt = true
    key     = "modules/playground/staging/f5-xc-gcp-vpc-multinode"
  }
  
  required_providers {
    volterra = {
      source = "volterraedge/volterra"
      version = ">= 0.11.16"
    }
    local = ">= 2.2.3"
    null = ">= 3.1.1"
    }
}