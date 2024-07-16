provider "aws" {
  region = "us-east-1"
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::621897290135:role/oidc-github-actions"
    session_name            = "bootcamp-account"
#     web_identity_token = var.ACTIONS_ID_TOKEN_REQUEST_TOKEN
  }
}

data "aws_caller_identity" "this" {}

output "out" {
  value = data.aws_caller_identity.this.account_id
}

variable "ACTIONS_ID_TOKEN_REQUEST_TOKEN" {}