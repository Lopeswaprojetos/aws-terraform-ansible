<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.67.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.67.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.apache_server](https://registry.terraform.io/providers/hashicorp/aws/5.67.0/docs/resources/instance) | resource |
| [aws_instance.nginx_server](https://registry.terraform.io/providers/hashicorp/aws/5.67.0/docs/resources/instance) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apache_server_ip"></a> [apache\_server\_ip](#output\_apache\_server\_ip) | IP Público do servidor Apache |
| <a name="output_nginx_server_ip"></a> [nginx\_server\_ip](#output\_nginx\_server\_ip) | IP Público do servidor Nginx |
<!-- END_TF_DOCS -->
