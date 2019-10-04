data "azurerm_virtual_network" "vnet" {
   name                 = "vnet-corpsystems-dev"
   resource_group_name  = "rg-corpsystems-dev-network"
 }

resource "azurerm_subnet" "appgwsubnetprivate" {
   name                 = "sn-agw-apmedt-dev"
   virtual_network_name = "${data.azurerm_virtual_network.vnet.name}"
   resource_group_name  = "rg-apm-edt"
   address_prefix       ="10.120.38.48/28"
 }

output "vnet_output_rg" {
    value = "${data.azurerm_virtual_network.vnet.resource_group_name}"
}

output "vnet_output_id" {
    value = "${data.azurerm_virtual_network.vnet.id}"
}