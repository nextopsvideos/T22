module "dev" {
    source          = "../../aks"
    rg_name         = "dev_rg"
    rg_location     = "eastus"
    acr_name        = "devnextopsacr01"
    acr_sku         = "Basic"
    admin_enabled   = true 
    aks_name        = "devnextopsaks01"
    pod_cidr        = "10.50.0.0/16"
    dns_service_ip  = "10.51.0.10"
    service_cidr    = "10.51.0.0/16"
    env             = "dev"  
}