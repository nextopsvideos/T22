module "prod" {
    source          = "../../aks"
    rg_name         = "prod_rg"
    rg_location     = "westus"
    acr_name        = "prodnextopsacr01"
    acr_sku         = "Premium"
    admin_enabled   = false  
    aks_name        = "prodnextopsaks01"
    pod_cidr        = "10.60.0.0/16"
    dns_service_ip  = "10.61.0.10"
    service_cidr    = "10.61.0.0/16"
    env             = "prod"  
}