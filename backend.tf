terraform {
  backend "s3" {
    bucket         = "saikumar-terraform-state-2026"
    key            = "terraform-project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "Terraform-locks"
    encrypt        = true
  }
}