terraform {
  required_providers {
    cloudamqp = {
      source  = "cloudamqp/cloudamqp"
      version = "~> 1.29.0"
    }
  }
  required_version = ">= 1.5"
}