# variables.tf

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Location of the resources."
  type        = string
}

variable "subnets" {
  description = "A list of subnets to associate NSG with."
  type        = list(string)
}

variable "vnets" {
  description = "A map of vnet configurations."
  type        = map(object({
    address_space = string
    subnets       = map(string)
  }))
}