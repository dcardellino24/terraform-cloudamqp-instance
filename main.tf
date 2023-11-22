terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.1.1"
    }
  }
  required_version = ">= 1.2.4"
}

provider "null" {}

variable "foo" {
  description = "Some data to store as an output of this module"
  type        = string
}

resource "null_resource" "cluster" {
  triggers = {
    foo = var.foo
  }
}

output "foo" {
  value = var.foo
}
