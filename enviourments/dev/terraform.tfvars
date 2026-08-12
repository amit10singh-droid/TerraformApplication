resource_group = {
  dev = {
    name     = "rg-dev"
    location = "eastus"
  }
}

stg = {
  dev = {
    storage_account          = "stgdev12345"
    resource_group_name      = "rg-dev"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnets = {
  devvnet1 = {
    name                = "devvnet1"
    resource_group_name = "rg-dev"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
    subnet = {
      subnet1 = {
        name           = "devsubnet1"
        address_prefix = ["10.0.2.0/24"]
      }
      subnet2 = {
        name           = "devsubnet2"
        address_prefix = ["10.0.3.0/24"]
      }
    }
  }
  devvnet2 = {
    name                = "devvnet2"
    resource_group_name = "rg-dev"
    location            = "eastus"
    address_space       = ["160.0.0.0/16"]
    subnet = {
      subnet1 = {
        name           = "devsubnet1"
        address_prefix = ["160.0.2.0/24"]
      }
      subnet2 = {
        name           = "devsubnet2"
        address_prefix = ["160.0.3.0/24"]
      }
    }
  }
}
