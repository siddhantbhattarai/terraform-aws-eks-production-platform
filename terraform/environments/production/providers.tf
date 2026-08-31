provider "aws" {
  region                      = var.aws_region
  access_key                  = var.use_floci ? "test" : null
  secret_key                  = var.use_floci ? "test" : null
  skip_credentials_validation = var.use_floci
  skip_metadata_api_check     = var.use_floci
  skip_requesting_account_id  = var.use_floci
  skip_region_validation      = var.use_floci
  dynamic "endpoints" {
    for_each = var.use_floci ? [var.floci_endpoint] : []
    content {
      ec2  = endpoints.value
      eks  = endpoints.value
      iam  = endpoints.value
      kms  = endpoints.value
      logs = endpoints.value
    }
  }
}
