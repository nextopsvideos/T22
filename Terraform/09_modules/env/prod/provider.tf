# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source        = "hashicorp/azurerm"
      version       = "=4.17.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "NextOps" 
      storage_account_name = "nextopssatf01"        
      container_name       = "tfstate"                      
      key                  = "PROD/prod.tfstate"      
      access_key = "IM01qQN5b5OOSceTJuaMhrKY/xvIRMHaRVaPg7+Ytn1VloM4PaQtgvhOLArtGl/iIQTVTa68Xj/Y+AStHfRTRg=="
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {} 
  subscription_id = "a355c32e-4a22-4b05-aab4-be236850fa6e"
}

