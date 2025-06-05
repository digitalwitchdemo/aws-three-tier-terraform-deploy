terraform {
  backend "s3" {
    bucket = "digitalwitchngbucket"
    key    = "digitalwitchng/prodution/terraform.tfstate"
    region = "us-west-1"
  }
}