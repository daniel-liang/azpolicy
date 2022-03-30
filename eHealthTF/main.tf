locals {
  policy = jsondecode(templatefile(var.policy_definition_file_path, var.policy_template_values))
}

resource "random_uuid" "uuid" {}

resource "azurerm_policy_definition" "definition" {
  name = lookup(local.policy, "name", random_uuid.uuid.result)

  description  = lookup(local.policy.properties, "description", null)
  policy_type  = lookup(local.policy.properties, "policyType", "Custom")
  mode         = lookup(local.policy.properties, "mode", null)
  display_name = lookup(local.policy.properties, "displayName", null)
  metadata     = jsonencode(lookup(local.policy.properties, "metadata", null))
  parameters   = jsonencode(lookup(local.policy.properties, "parameters", null))
  policy_rule  = jsonencode(lookup(local.policy.properties, "policyRule", null))

  management_group_name = var.management_group_name == null ? var.management_group_name : null
}
