# outputs.tf

output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

output "vnet_ids" {
  value = module.vnet.vnet_ids
}

output "nsg_ids" {
  value = module.nsg.nsg_ids
}