# terraform.tfvars

resource_group_name = "my-resource-group"
location            = "West Europe"

vnets = {
  "vnet1" = {
    address_space = "10.0.0.0/16"
    subnets = {
      "subnet1" = "10.0.1.0/24"
      "subnet2" = "10.0.2.0/24"
    }
  },
  "vnet2" = {
    address_space = "192.168.0.0/16"
    subnets = {
      "subnet1" = "192.168.1.0/24"
      "subnet2" = "192.168.2.0/24"
    }
  }
}