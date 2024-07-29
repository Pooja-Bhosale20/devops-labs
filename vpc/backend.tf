terraform {
  backend "s3" {
    bucket = "devopslabs706"
    key    = "devops-labs/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
