locals {
  files = fileset("${path.module}/policies/", "*.json")
  data  = [for f in local.files : jsondecode(templatefile("${path.module}/policies/${f}", var.policy_template_values))]
}

module "azure_policies_01" {
  #source   = "git::https://git.health.nsw.gov.au/ehnsw-terraform/module-azure-policy-definition.git?ref=v1.0.2"
  #source = "./eHealthTF"
  #source   = "./eHealthTF"
  source = "git::https://github.com/daniel-liang/tfmodule.git?ref=v1.0.0"
  for_each = local.files

  policy_definition_file_path = format("%s/%s", path.module, "policies/${each.value}")
  policy_template_values      = tomap(var.policy_definition_values)
  /*
  policy_name               = each.value.properties.displayName 
  display_name              = each.value.properties.displayName    
  policy_description        = try(each.value.properties.displayName, "Description_UPDATE_CONDITION")
  policy_category           = each.value.properties.policyType
  metadata                  = jsonencode(lookup(each.value.properties,"metadata", null))
  policy_rule               = jsonencode(lookup(each.value.properties,"policyRule", null))
  parameters                = jsonencode(lookup(each.value.properties,"parameters", null))
  */
}

module "azure_policy_initiative_01" {

  source                  = "./modules/initiative"
  initiative_name         = var.initiative_name
  initiative_display_name = var.initiative_display_name
  initiative_description  = var.initiative_description
  initiative_category     = var.initiative_category

  member_definitions = [for policy in module.azure_policies_01 :
    policy.definition
  ]
  depends_on = [module.azure_policies_01]
}
