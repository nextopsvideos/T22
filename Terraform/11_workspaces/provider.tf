# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source        = "hashicorp/azurerm"
      version       = "=4.16.0"
    }
  }

  
  backend "azurerm" {
    resource_group_name = "NextOpsRG01"
    storage_account_name = "nextopssa001"
    container_name = "tfstate"
    key = "terraform.tfstate"    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {} 
  subscription_id = "a355c32e-4a22-4b05-aab4-be236850fa6e"
}

