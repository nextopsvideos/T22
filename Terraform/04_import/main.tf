resource "azurerm_resource_group" "rg1" {
    name = "NextOpsRG01"
    location = "EastUS"
}

resource "azurerm_virtual_network" "vnet1" {
    name = "NextOpsVNET01"
    resource_group_name = azurerm_resource_group.rg1.name
    location = azurerm_resource_group.rg1.location
    address_space = [ "10.0.0.0/16" ]
}

resource "azurerm_subnet" "subnet05" {
    name = "Subnet05"
    resource_group_name = azurerm_resource_group.rg1.name 
    virtual_network_name = azurerm_virtual_network.vnet1.name 
    address_prefixes = [ "10.0.4.0/24" ]  
}

resource "azurerm_subnet" "subnet06" {
    name = "Subnet06"
    resource_group_name = azurerm_resource_group.rg1.name 
    virtual_network_name = azurerm_virtual_network.vnet1.name 
    address_prefixes = [ "10.0.5.0/24" ]  
}