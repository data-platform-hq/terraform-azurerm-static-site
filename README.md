# Azure <> Terraform module
Terraform module for creation Azure Static Web Apps

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_static_site.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_site) | resource |
| [azurerm_static_site_custom_domain.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_site_custom_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name | `string` | `null` | no |
| <a name="input_env"></a> [env](#input\_env) | Environment | `string` | n/a | yes |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | List of user assigned identity IDs | `list(string)` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Location | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Static site name | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project name | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource group name | `string` | n/a | yes |
| <a name="input_sku_size"></a> [sku\_size](#input\_sku\_size) | SKU size | `string` | `"Free"` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | SKU tier | `string` | `"Free"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(string)` | n/a | yes |
| <a name="input_validation_type"></a> [validation\_type](#input\_validation\_type) | Validation type | `string` | `"dns-txt-token"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_key"></a> [api\_key](#output\_api\_key) | The API Key of the Static Site. |
| <a name="output_custom_domain_id"></a> [custom\_domain\_id](#output\_custom\_domain\_id) | The ID of the Custom Domain. |
| <a name="output_default_host_name"></a> [default\_host\_name](#output\_default\_host\_name) | The Default Host Name of the Static Site. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Static Site. |
| <a name="output_identity"></a> [identity](#output\_identity) | The Managed Identity of the Static Site. |
| <a name="output_validation_token"></a> [validation\_token](#output\_validation\_token) | The Validation Token of the Custom Domain. |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm-static-site/blob/main/LICENSE)
