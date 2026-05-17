terraform {
  backend "s3" {
    bucket         = "vijitha-tfstate-production"
    key            = "production/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
