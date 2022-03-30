variable "policy_definition_file_path" {
  type        = string
  description = "The path to the policy definition json file"
}

variable "policy_template_values" {
  type    = map(any)
  default = {}
}

variable "management_group_name" {
  type        = string
  description = "A name of a management group in which to create the policy"
  default     = null
}
