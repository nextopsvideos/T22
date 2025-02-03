data "azurerm_resource_group" "existing_rg" {
   name = "NextOpsRG01"
}

data "azurerm_virtual_network" "existingvnet" {
   name = "NextOpsVNET01"
   resource_group_name = data.azurerm_resource_group.existing_rg.name 
}

resource "azurerm_subnet" "subnet05" {
    name = "Subnet05"
    resource_group_name = data.azurerm_resource_group.existing_rg.name 
    virtual_network_name = data.azurerm_virtual_network.existingvnet.name 
    address_prefixes = [ "10.0.4.0/24" ]  
}

resource "azurerm_subnet" "subnet06" {
    name = "Subnet06"
    resource_group_name = data.azurerm_resource_group.existing_rg.name 
    virtual_network_name = data.azurerm_virtual_network.existingvnet.name 
    address_prefixes = [ "10.0.5.0/24" ]  
}