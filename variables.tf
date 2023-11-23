variable "name" {
  description = "Name of the instance"
  type        = string
}

variable "plan" {
  description = "Desired payment plan for the instance. Also the node count eg. rabbit-3"
  type        = string
}

variable "region" {
  description = "The region for the instance eg. google-compute-engine::northamerica-northeast1"
  type        = string
}

variable "rmq_version" {
  description = "RabbitMQ version"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "Id of the VPC. VPC region has to match region."
  type        = string
  default     = null
}

variable "tags" {
  type    = list(string)
  default = []
}

variable "firewall_enabled" {
  type    = bool
  default = false
}

variable "fw_rules" {
  type = list(object({
    ip          = string
    portsc      = optional(list(number))
    services    = list(string)
    description = string
  }))
  default = []
}

variable "no_default_alarms" {
  type    = bool
  default = false
}

variable "keep_associated_vpc" {
  type    = bool
  default = true
}