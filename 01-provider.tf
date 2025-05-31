# provider "aws" {
#   region = "us-east-1"
# }


terraform {
  required_providers {
    namecheap = {
      source = "namecheap/namecheap"
      version = "2.2.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
}

provider "namecheap" {
  user_name = var.namecheap_username
  api_user = var.namecheap_api_user
  api_key = var.namecheap_api_key
  client_ip = var.namecheap_client_ip
  use_sandbox = false
}