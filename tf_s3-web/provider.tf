provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
  endpoints {
    s3                = "http://localhost:4566"
    dynamodb          = "http://localhost:4566"
    ec2               = "http://localhost:4566"
    ecr               = "http://localhost:4566"
  }
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
}