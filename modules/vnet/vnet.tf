# modules/vnet/vnet.tf

resource "azurerm_virtual_network" "main" {
  for_each          = var.vnets
  name              = each.key
  address_space     = [each.value.address_space]
  location          = var.location
  resource_group_name = var.resource_group_name

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name           = subnet.key
      address_prefix = subnet.value
      #virtual_network_name = azurerm_virtual_network.main[each.key].name
    }
  }
}