output "id" {
  description = "The Id of the Policy Definition"
  value       = azurerm_policy_definition.definition.id
}

output "rules" {
  description = "The rules of the Policy Definition"
  value       = azurerm_policy_definition.definition.policy_rule
}

output "parameters" {
  description = "The parameters of the Policy Definition"
  value       = azurerm_policy_definition.definition.parameters
}

output "definition" {
  description = "The complete resource node of the Policy Definition"
  value       = azurerm_policy_definition.definition
}
