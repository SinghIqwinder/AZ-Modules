# variables.tf

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Location of the resources."
  type        = string
}

variable "vnets" {
  description = "A map of vnet configurations."
  type        = map(object({
    address_space = string
    subnets       = map(string)
  }))
}

#variable "nsg_rules" {
#  description = "A map of NSG rules configurations."
#  type        = map(object({
#    name           = string
#    priority       = number
#    direction      = string
#    access         = string
#    protocol       = string
#    source_address = string
#    destination_address = string
#    source_port_range = string
#    destination_port_range = string
#  }))
#}

