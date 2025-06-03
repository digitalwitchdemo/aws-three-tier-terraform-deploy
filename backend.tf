terraform {
  backend "s3" {
    bucket = "my-tf-state-bucket"
    key    = "digitalwitchngbucket/prodution/terraform.tfstate"
    region = "us-west-1"
  }
}