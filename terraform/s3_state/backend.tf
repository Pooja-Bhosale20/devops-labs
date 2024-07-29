terraform {
  backend "s3" {
    bucket = "devopslabs706"
    key    = "devops-labs/s3_state/terraform.tfstate"
    region = "us-east-1"
  }
}
