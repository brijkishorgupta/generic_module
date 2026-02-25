terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.59.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg_infra1"
    storage_account_name = "storageinfra12"
    container_name       = "contenerinfra1"
    key                  = "nikku.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "b52c364c-f2c6-44ff-b1ea-c524e3c5bb7d"
}
