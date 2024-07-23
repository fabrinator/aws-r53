provider "aws" {
#   profile = "crc-dev"
  region = "us-east-1"
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::${var.TF_PROVIDER_AWS_ACCOUNT}:role/oidc-github-actions"
    web_identity_token = var.id_token
  }
}