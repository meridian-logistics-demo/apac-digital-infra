terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket       = "meridian-terraform-state"
    key          = "apac-digital/edge-02/ap-southeast-1/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
