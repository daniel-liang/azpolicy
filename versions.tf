provider "azurerm" {
  features {}
}

terraform {
  required_version = "1.0.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.84"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Provider-INF-RGP-01"
    storage_account_name = "nscclhdtfstate"
    container_name       = "provider-initiative"
    key                  = "azurepolicy.tfstate"
  }
}
