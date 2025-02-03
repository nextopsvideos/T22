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
      resource_group_name  = "NextOps"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
      storage_account_name = "nextopstfsat22"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
      container_name       = "tfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
      key                  = "terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
      access_key = "jfkadkfjkdjfkjaicnunufnuncudnfuhurerudbjaslklggkfojkmcduhudhjnamldfkd"
    }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {} 
  subscription_id = "a355c32e-4a22-4b05-aab4-be236850fa6e"
}

