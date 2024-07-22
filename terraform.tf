terraform {
  backend "s3" {
    bucket         = "terraform-state-backend-frivas"
    key            = "aws/aws-r53"
    region         = "us-east-1"
    dynamodb_table = "terraform_state"
  }
}