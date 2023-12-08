resource "cloudamqp_instance" "instance" {
  name                = var.name
  plan                = var.plan
  region              = var.region
  tags                = concat(var.tags, ["terraform"])
  rmq_version         = var.rmq_version
  vpc_id              = var.vpc_id
  no_default_alarms   = var.no_default_alarms
  keep_associated_vpc = var.keep_associated_vpc
}

resource "cloudamqp_security_firewall" "firewall_settings" {
  count = var.firewall_enabled ? 1 : 0

  instance_id = cloudamqp_instance.instance.id

  rules {
    description = "Rabbitmq Console"
    ip          = "0.0.0.0/0"
    ports       = []
    services    = ["HTTPS"]
  }

  dynamic "rules" {
    for_each = var.fw_rules
    content {
      ip          = rules.value.ip
      ports       = lookup(rules.value, "ports", [])
      services    = rules.value.services
      description = lookup(rules.value, "description", "")
    }
  }
}

