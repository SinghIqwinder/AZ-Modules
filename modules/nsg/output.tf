output "nsg_ids" {
  value = {
    for subnet in var.subnets :
      subnet => azurerm_network_security_group.main[subnet].id
  }
}