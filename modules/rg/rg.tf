# modules/rg/rg.tf

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Location of the resource group."
  type        = string
}