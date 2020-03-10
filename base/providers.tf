provider "aws" {
  version = "~> 2.41.0"
  profile = var.aws_profile
  region  = var.region
}
