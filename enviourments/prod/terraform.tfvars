resource_group = {
  prod = {
    name     = "rg-prod"
    location = "eastus"
  }
}

stg = {
  prod = {
    storage_account          = "stgprod12345"
    resource_group_name      = "rg-prod"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

vnets = {
  prodvnet1 = {
    name                = "prodvnet1"
    resource_group_name = "rg-prod"
    location            = "eastus"
    address_space       = ["10.1.0.0/16"]
    subnet = {
      subnet1 = {
        name           = "prodsubnet1"
        address_prefix = ["10.1.1.0/24"]
      }
      subnet2 = {
        name           = "prodsubnet2"
        address_prefix = ["10.1.2.0/24"]
      }
    }
  }
}
