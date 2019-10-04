module "instances_we" {
    source                  = "./vnets"    
   
    //custom
    region                          = "${var.regions["primary"]}"
    virtual_network_address_prefix  = "${var.virtual_network_address_prefix["primary"]}"

    //common
    project_shortcut         = "${var.project_shortcut}"
    environment              = "${var.environment_shortcut}"
    tags                     = "${var.tags}"
}


module "instances_ne" {
    source                  = "./vnets"    
  
    //custom
    region                          = "${var.regions["paired"]}"
    virtual_network_address_prefix  = "${var.virtual_network_address_prefix["paired"]}"

    //common
    project_shortcut         = "${var.project_shortcut}"
    environment              = "${var.environment_shortcut}"
    tags                     = "${var.tags}"
}