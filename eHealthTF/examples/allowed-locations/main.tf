data "azurerm_subscription" "subscription" {
  # Use current subscription
}

module "policy" {
  #source                      = "git::https://git.health.nsw.gov.au/ehnsw-terraform/module-azure-policy-definition.git?ref=v1.0.0"
  source   = "./eHealthTF"
  policy_definition_file_path = format("%s/%s", path.module, "allowed-location-policy.json")
}
