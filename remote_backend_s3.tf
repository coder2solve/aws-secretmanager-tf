terraform {
  backend "s3" {
    bucket = "sh-tf-statefile"
    key    = "infra/terraform.tfstate"
    region = "us-west-2"
  }
}