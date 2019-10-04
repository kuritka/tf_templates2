
resource "azurerm_resource_group" "rg" {
    name = "${local.resource_group_name}"
    location =  "${var.region}"
}

resource "azurerm_virtual_network" "vnet" {
   name                = "${local.vnet_name}"
   location            = "${var.region}"
   resource_group_name = "${azurerm_resource_group.rg.name}"
   address_space       = ["${var.virtual_network_address_prefix}"]

   //TIT
   subnet {
      name           = "${local.private_addr_prefix_name}"
      address_prefix = "${local.private_addr_prefix_start}"
   }

   subnet {
      name           = "${local.public_addr_prefix_name}"
      address_prefix = "${local.public_addr_prefix_start}"
   }

   tags = "${var.tags}"
}
