# Azure Policy Definition Terraform module

Terraform module to create an Azure policy definition.

## Usage

```hcl
module "policy" {
  source                      = "git::https://git.health.nsw.gov.au/ehnsw-terraform/module-azure-policy-definition.git?ref=v1.0.0"
  policy_definition_file_path = format("%s/%s", path.module, "policy/path.json")
}
```

## Examples

Further examples within repository:

* [Allowed Locations](https://git.health.nsw.gov.au/ehnsw-terraform/module-azure-policy/tree/master/examples/allowed-locations)

## Inputs Notes

### Policy Definition

* At its simplest you only need to provide this module the path to a json policy definition (`policy_definition_file_path`) as defined in the following Microsoft documentation: <https://docs.microsoft.com/en-us/azure/governance/policy/concepts/definition-structure>.
* This policy can take a complete json policy or json policy [template](https://www.terraform.io/docs/language/functions/templatefile.html) with a set of `policy_template_values`.
* If no `name` is provided for the policy a random [uuid](https://www.terraform.io/docs/language/functions/uuid.html) is used.

For a list of example policies see: <https://github.com/Azure/azure-policy>

<!-- textlint-disable -->
<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.27.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.27.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_policy_definition.definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource |
| [random_uuid.uuid](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_management_group_name"></a> [management\_group\_name](#input\_management\_group\_name) | A name of a management group in which to create the policy | `string` | `null` | no |
| <a name="input_policy_definition_file_path"></a> [policy\_definition\_file\_path](#input\_policy\_definition\_file\_path) | The path to the policy definition json file | `string` | n/a | yes |
| <a name="input_policy_template_values"></a> [policy\_template\_values](#input\_policy\_template\_values) | n/a | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition"></a> [definition](#output\_definition) | The complete resource node of the Policy Definition |
| <a name="output_id"></a> [id](#output\_id) | The Id of the Policy Definition |
| <a name="output_parameters"></a> [parameters](#output\_parameters) | The parameters of the Policy Definition |
| <a name="output_rules"></a> [rules](#output\_rules) | The rules of the Policy Definition |

<!--- END_TF_DOCS --->
 <!-- textlint-enable -->
