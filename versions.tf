terraform {
  required_version = "~>1.12.0"

  required_providers {
    aws = {
        version = "~>6.30.0"
    }
  }

  backend "s3" {
    bucket = "terra-backend-bucket-9641"
    region = "ap-south-1"
    key = "Terraform\terraform.tfstate"
    #dynamodb_table = "backend-lock-table"
    use_lockfile = true
  }
}