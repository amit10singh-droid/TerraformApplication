module "resource_group" {
  source = "../../modules/azurerm_resourcegroup"
  rgname = var.resource_group
}

module "storageaccount" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_storageaccount"
  azurerm_st = var.stg
}

module "network" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_vnet"
  vnets      = var.vnets
}
