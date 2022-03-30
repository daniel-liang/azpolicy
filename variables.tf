variable "initiative_name" {
  type        = string
  description = "Policy initiative name. Changing this forces a new resource to be created"
}

variable "initiative_display_name" {
  type        = string
  description = "Policy initiative display name"
}

variable "initiative_description" {
  type        = string
  description = "Policy initiative description"
  default     = "Policy initiative description"
}

variable "initiative_category" {
  type        = string
  description = "The category of the initiative"
  default     = "General"
}

variable "initiative_version" {
  type        = string
  description = "The version for this initiative, defaults to 1.0.0"
  default     = "1.0.0"
}

variable "policy_definition_values" {
  type        = map(any)
  description = "Map of dynamic values in the policy definitions"
}

variable "policy_template_values" {
  type    = map(any)
  default = {}
}