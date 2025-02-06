module "test" {
    source          = "../../aks"
    rg_name         = "test_rg"
    rg_location     = "centralus"
    acr_name        = "testnextopsacr01"
    acr_sku         = "Standard"
    admin_enabled   = true 
    aks_name        = "testnextopsaks01"
    pod_cidr        = "10.70.0.0/16"
    dns_service_ip  = "10.71.0.10"
    service_cidr    = "10.71.0.0/16"
    env             = "test"  
}