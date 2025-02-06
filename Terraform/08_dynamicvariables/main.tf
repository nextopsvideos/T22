resource "azurerm_resource_group" "rg" {
    name        = var.rg_name
    location    = var.rg_location  
}

#if you enter no as input for env_prod, then dev related values applied, else prod related values applied
resource "azurerm_virtual_network" "vnet" {
    name                =  var.env_prod == "no" ? "dev-vnet" : "prod-vnet"  
    resource_group_name =  azurerm_resource_group.rg.name
    location            =  azurerm_resource_group.rg.location
    address_space       =  var.env_prod == "no" ? ["10.20.0.0/16"] : ["10.10.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
    name                    = var.env_prod == "no" ? "dev-subnet" : "prod-subnet"
    resource_group_name     = azurerm_resource_group.rg.name
    virtual_network_name    = azurerm_virtual_network.vnet.name
    address_prefixes        = var.env_prod == "no" ? ["10.20.0.0/24"] : ["10.10.0.0/24"]  
}