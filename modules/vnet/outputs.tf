output "vnet_ids" {
  value = {
    for vnet_key, vnet in azurerm_virtual_network.main :
      vnet_key => vnet.id
  }
}