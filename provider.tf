terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82"
    }
    huaweicloud = {
      source  = "huaweicloud/huaweicloud" # https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs
      version = ">= 1.72.1"
    }
  }
  required_version = ">= 1.3.0"
}

provider "huaweicloud" {
  profile            = var.hw-profile
  region             = var.hw-region
  shared_config_file = var.hw-config-file
}