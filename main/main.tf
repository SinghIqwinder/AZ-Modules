# main.tf

module "resource_group" {
  source                 = "github.com/SinghIqwinder/AZ-Modules//modules/rg"
  resource_group_name    = var.resource_group_name
  location               = var.location
}

module "vnet" {
  source                 = "github.com/SinghIqwinder/AZ-Modules//modules/vnet"
  resource_group_name    = var.resource_group_name
  location               = var.location
  vnets                  = var.vnets
  depends_on = [ module.resource_group ]
}

module "nsg" {
  source                 = "github.com/SinghIqwinder/AZ-Modules//modules/nsg"
  resource_group_name    = var.resource_group_name
  location               = var.location
  subnets                = [for vnet in values(var.vnets) : vnet.subnets]
  nsg_rules              = var.nsg_rules
  depends_on = [ module.vnet]
}
