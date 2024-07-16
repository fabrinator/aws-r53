provider "aws" {
  region = us-east-1
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::621897290135:role/oidc-github-actions"
#     session_name            = "SESSION_NAME"
#     web_identity_token_file = "/Users/tf_user/secrets/web-identity-token"
  }
}

data "aws_caller_identity" "this" {}

output "out" {
  value = data.aws_caller_identity.this.account_id
}