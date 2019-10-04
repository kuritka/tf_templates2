#terraform state or file locking issues, Storage Account must be created automatically
terraform {
    backend "azurerm" {
        storage_account_name = "fsedttest" # Use your own unique name here
        container_name       = "tfstate" # Use your own container name here
        key                  = "dev.terraform.tfstate" # Add a name to the state file
        resource_group_name  = "rg-apm-edt" # Use your own container name here
    }
}
