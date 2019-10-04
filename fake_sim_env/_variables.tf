variable "subscription_id" {
    description = "The Azure subscription ID."
}

variable "client_id" {
    description = "The Azure Service Principal app ID."
}

variable "client_secret" {
    description = "The Azure Service Principal password."
}

variable "tenant_id" {
    description = "The Azure Tenant ID."
}

variable "project_shortcut" {
  description = "project shortcut"
  default = "edt"
}


variable environment_shortcut { 
    description="Environment shortut used for naming"
    default="fakesim"
}

variable "regions" {
    type="map"
    default = {
        primary = "westeurope"
        paired = "northeurope"
    }
}

variable "virtual_network_address_prefix" {
    type= "map"
    default = {
        primary="10.121.40.0/22"
        paired="10.121.36.0/22"
    }
}

variable "tags" {
  type = "map"
  default = {
    source = "terraform"
    Creator = "aq446"
    Product = "CoprSys"
    CostCenter = "PSP"
    Owner="aq446"
    ApplicationID = "AID547"
    Environments="Sendbox"
    Purpose = "SIM, tetsing  in s_corpsys_sim"
    Criticality = "None"
  }
}


