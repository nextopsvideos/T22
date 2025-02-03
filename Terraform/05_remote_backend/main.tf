resource "azurerm_resource_group" "myrg" {
    name = "WebAppRG"
    location = "WestUS"
}

resource "azurerm_service_plan" "asp1" {
    name = "nextopsaspt22"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    sku_name = "B1"
    os_type = "Linux"  
}

resource "azurerm_linux_web_app" "app1" {
  name                = "nextopswat22"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  service_plan_id     = azurerm_service_plan.asp1.id
  site_config {}
}