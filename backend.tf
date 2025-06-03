terraform {
  backend "s3" {
    bucket = "digitalwitchngbucket"
    key    = "prodution/terraform.tfstate"
    region = "us-east-1"
  }
}