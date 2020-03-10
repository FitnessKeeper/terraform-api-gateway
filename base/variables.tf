#  Variables.tf declares has the default variables that are shared by all environments
# $var.region, $var.domain, $var.tf_s3_bucket

# Read credentials from environment variables
#$ export AWS_ACCESS_KEY_ID="anaccesskey"
#$ export AWS_SECRET_ACCESS_KEY="asecretkey"
#$ export AWS_DEFAULT_REGION="us-west-2"
#$ terraform plan
variable "aws_profile" {
  description = "Which AWS profile is should be used? Defaults to \"default\""
  default     = "default"
}

variable "region" {
  default = "us-east-1"
}

# This should be changed to reflect the service / stack defined by this repo
# for example replace "ref" with "cms", "slackbot", etc
variable "stack" {
  default = "ref"
}

variable "tf_s3_bucket" {
  description = "S3 bucket Terraform can use for state"
  default     = "rk-devops-state-us-east-1"
}

variable "master_state_file" {
  default = "terraform-api-gateway/state/base/base.tfstate"
}

variable "prod_state_file" {
  default = "terraform-api-gateway/state/production/production.tfstate"
}

variable "staging_state_file" {
  default = "terraform-api-gateway/state/staging/staging.tfstate"
}

variable "dev_state_file" {
  default = "terraform-api-gateway/state/dev/dev.tfstate"
}
