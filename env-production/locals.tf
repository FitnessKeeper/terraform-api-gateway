locals {
  aws_api_gateway_deployment_name = coalesce(var.aws_api_gateway_deployment_name_overwrite, filemd5("main.tf"))
}
