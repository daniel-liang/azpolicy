terraform {
  required_version = ">= 0.12.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.27.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0"
    }
  }
}
