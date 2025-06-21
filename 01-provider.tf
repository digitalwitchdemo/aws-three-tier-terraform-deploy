# provider "aws" {
#   region = "us-east-1"
# }


terraform {
  required_providers {
    godaddy-dns = {
      source = "veksh/godaddy-dns"
      version = "0.3.12"
    }
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.10" # Or any version < 2.11
    }
  
  }
}

provider "godaddy-dns" {
  api_key    = "better set it in GODADDY_API_KEY"
  api_secret = "better set it in GODADDY_API_SECRET"
}
provider "aws" {
  region = "us-east-1"
}
