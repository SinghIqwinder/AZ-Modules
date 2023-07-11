# terraform.tfvars

resource_group_name = "my-resource-group"
location            = "West Europe"

vnets = {
  "vnet1" = {
    address_space = "10.0.0.0/16"
    subnets = {
      "subnet1" = "10.0.1.0/24"
      "subnet2" = "10.0.2.0/24"
      "subnet3" = "10.0.3.0/24"
    }
  },
  "vnet2" = {
    address_space = "192.168.0.0/16"
    subnets = {
      "subnet1" = "192.168.1.0/24"
      "subnet2" = "192.168.2.0/24"
      "subnet3" = "192.168.3.0/24'"
    }
  }
}

#nsg_rules = {
# "allow-http" = {
#   name                 = "allow-http"
#   priority             = 100
#    direction            = "Inbound"
#    access               = "Allow"
#    protocol             = "Tcp"
#    source_address       = "*"
#    destination_address  = "*"
#    source_port_range    = "*"
#    destination_port_range = "80"
#  },
#  "allow-ssh" = {
#    name                 = "allow-ssh"
#    priority             = 200
#    direction            = "Inbound"
#    access               = "Allow"
#    protocol             = "Tcp"
#    source_address       = "192.168.0.0/16"
#    destination_address  = "*"
#    source_port_range    = "*"
#    destination_port_range = "22"
#  }
#}