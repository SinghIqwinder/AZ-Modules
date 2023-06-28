resource "azurerm_network_security_group" "main" {
  for_each                = each.value.subnets
  name                    = "${each.key}-nsg"
  location                = var.location
  resource_group_name     = var.resource_group_name

  dynamic "security_rule" {
    for_each = var.nsg_rules
    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_address_prefix      = security_rule.value.source_address
      destination_address_prefix = security_rule.value.destination_address
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      #network_security_group_name = azurerm_network_security_group.main[each.key].name
    }
  }
}