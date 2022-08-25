
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.loaction
}
module "new-storage"{
 source = "../modules/storageaccount"
 resource_group_name = "storage_terraform_rg"
 location = "East Us"
 storage_account_name = "storageacc0898"
 storage_container_name = "my-files"
 storage_blob_name = "sid.com"
}