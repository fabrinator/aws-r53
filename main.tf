provider "aws" {
  alias = "bootcamp-account"
  region = "us-east-1"
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::621897290135:role/oidc-github-actions"
    web_identity_token = var.id_token
  }
}

provider "aws" {
  alias = "crc-dev"
  region = "us-east-1"
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::912008965710:role/oidc-github-actions"
    web_identity_token = var.id_token
  }
}

data "aws_caller_identity" "this" {
  provider = aws.bootcamp-account
}

data "aws_caller_identity" "this2" {
  provider = aws.crc-dev
}

output "out" {
  value = [data.aws_caller_identity.this.account_id, data.aws_caller_identity.this2.account_id]
}

variable "id_token" {}