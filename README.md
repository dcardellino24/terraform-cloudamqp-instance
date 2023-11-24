<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_cloudamqp"></a> [cloudamqp](#requirement\_cloudamqp) | ~> 1.28.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudamqp"></a> [cloudamqp](#provider\_cloudamqp) | ~> 1.28.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudamqp_instance.instance](https://registry.terraform.io/providers/cloudamqp/cloudamqp/latest/docs/resources/instance) | resource |
| [cloudamqp_security_firewall.firewall_settings](https://registry.terraform.io/providers/cloudamqp/cloudamqp/latest/docs/resources/security_firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall_enabled"></a> [firewall\_enabled](#input\_firewall\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_fw_rules"></a> [fw\_rules](#input\_fw\_rules) | n/a | <pre>list(object({<br>    ip          = string<br>    portsc      = optional(list(number))<br>    services    = list(string)<br>    description = string<br>  }))</pre> | `[]` | no |
| <a name="input_keep_associated_vpc"></a> [keep\_associated\_vpc](#input\_keep\_associated\_vpc) | n/a | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the instance | `string` | n/a | yes |
| <a name="input_no_default_alarms"></a> [no\_default\_alarms](#input\_no\_default\_alarms) | n/a | `bool` | `false` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Desired payment plan for the instance. Also the node count eg. rabbit-3 | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region for the instance eg. google-compute-engine::northamerica-northeast1 | `string` | n/a | yes |
| <a name="input_rmq_version"></a> [rmq\_version](#input\_rmq\_version) | RabbitMQ version | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `list(string)` | `[]` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | Id of the VPC. VPC region has to match region. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->