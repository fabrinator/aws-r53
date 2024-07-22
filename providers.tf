provider "aws" {
#   profile = "infra-shared"
#   alias = "infra-shared"
  region = "us-east-1"
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::730335655220:role/oidc-github-actions"
    web_identity_token = var.id_token
  }
}
