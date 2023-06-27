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
}
