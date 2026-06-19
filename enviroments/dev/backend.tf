terraform {
  backend "s3" {
    bucket         = "swen14-terraform-state-2026"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "swen14-terraform-lock-table"
  }
}
