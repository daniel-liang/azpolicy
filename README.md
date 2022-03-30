<!-- markdownlint-disable MD034 -->
# Terraform Policy for NSCCLHD

## Usage

This module can be run by:

```bash
# specify Az Subscription
az account set --subscription fa595761-5179-499c-9ab8-9bd11c50abbb

# initializing terraform
terraform init

# Running Terraform plan
terraform plan

# Applying the plan
terraform apply

# Destroying the ARM deployment
terraform destroy
```

## Requirements

| Name                                                                     | Version |
| ------------------------------------------------------------------------ | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | 1.0.9   |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm)       | ~> 2.84 |

## Providers

| Name                                                         | Version |
| ------------------------------------------------------------ | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | 2.84.0  |

## Modules

| Name                                                                                                     | Source                                                                                | Version |
| -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------- |
| <a name="module_azure_policies"></a> [azure_policies](#module_azure_policies)                            | git::https://git.health.nsw.gov.au/ehnsw-terraform/module-azure-policy-definition.git | v1.0.2  |
| <a name="module_azure_policy_initiative"></a> [azure_policy_initiative](#module_azure_policy_initiative) | ./modules/initiative                                                                  | n/a     |

## Resources

| Name                                                                                                                            | Type        |
| ------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name                                                                                                      | Description                                                               | Type       | Default                           | Required |
| --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ---------- | --------------------------------- | :------: |
| <a name="input_initiative_category"></a> [initiative_category](#input_initiative_category)                | The category of the initiative                                            | `string`   | `"General"`                       |    no    |
| <a name="input_initiative_description"></a> [initiative_description](#input_initiative_description)       | Policy initiative description                                             | `string`   | `"Policy initiative description"` |    no    |
| <a name="input_initiative_display_name"></a> [initiative_display_name](#input_initiative_display_name)    | Policy initiative display name                                            | `string`   | n/a                               |   yes    |
| <a name="input_initiative_name"></a> [initiative_name](#input_initiative_name)                            | Policy initiative name. Changing this forces a new resource to be created | `string`   | n/a                               |   yes    |
| <a name="input_initiative_version"></a> [initiative_version](#input_initiative_version)                   | The version for this initiative, defaults to 1.0.0                        | `string`   | `"1.0.0"`                         |    no    |
| <a name="input_policy_definition_values"></a> [policy_definition_values](#input_policy_definition_values) | Map of dynamic values in the policy definitions                           | `map(any)` | n/a                               |   yes    |

## Outputs

