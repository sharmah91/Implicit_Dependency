terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = ""
}

resource "azurerm_resource_group" "rachita_1" {
  name     = "RG_Rachita_1"
  location = "East US"
}

 resource "azurerm_storage_account" "Rachita_1" {
 name                     = "rachitastorageaccount1"
 location                 = azurerm_resource_group.rachita_1.location
 resource_group_name      = azurerm_resource_group.rachita_1.name
   account_tier             = "Standard"
   account_replication_type = "LRS"
 }
