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


variable "primary_region" {
    description = "The Azure region to create things in."
    default = "westeurope"
}



variable "tags" {
  type = "map"
  default = {
    source = "terraform"
    creator = "aq446"
    owner = "aq446"
    application = "edt"
    purpose = "test service principal"
    environment = "dev"
  }
}
