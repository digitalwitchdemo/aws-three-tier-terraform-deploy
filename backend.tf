terraform {
  backend "s3" {
    bucket = "digitalwitchngbucket"
    key    = "digitalwitchng/prodution/terraform.tfstate"
    region = "eu-north-1"
  }
}