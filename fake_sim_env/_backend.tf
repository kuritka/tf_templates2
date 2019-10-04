#terraform state or file locking issues, Storage Account must be created automatically
terraform {
    backend "azurerm" {
        storage_account_name = "stateedttitdemo" # Use your own unique name here
        container_name       = "simteststate" # Use your own container name here
        key                  = "sim.terraform.tfstate" # Add a name to the state file
        resource_group_name  = "rg-edt-titdemo-tfstate" # Use your own container name here
    }
}
