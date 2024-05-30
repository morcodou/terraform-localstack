variable "access_key" {
  description = "Access key to AWS LocalStack"
}

variable "secret_key" {
  description = "Secret key to AWS LocalStack"
}

variable "region" {
  description = "Region of AWS LocalStack"
}

variable "sns_subscription_email" {
  type        = string
  description = "Email endpoint for the SNS subscription"
}
