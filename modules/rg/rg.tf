# modules/rg/rg.tf

resource "azurerm_resource_group" "main" {
  name = var.resource_group_name
  location = var.location
}