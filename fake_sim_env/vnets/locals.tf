locals {
    suffix = "${var.project_shortcut}-${var.environment}-${var.region}"
    resource_group_name = "rg-${local.suffix}"
    vnet_name = "vnet-${local.suffix}"


    private_addr_prefix_name = "sn-${local.suffix}-private"
    private_addr_prefix_start = "${cidrsubnet(var.virtual_network_address_prefix,  lookup(var.newbit_size,"size_512"),0)}"

    public_addr_prefix_name = "sn-${local.suffix}-public"

    public_addr_prefix_start = "${cidrsubnet(var.virtual_network_address_prefix,  lookup(var.newbit_size,"size_16"),32)}"


}