terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.99.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "StorageAccount-ResourceGroup"  
#     storage_account_name = "abcd1234"                     
#     container_name       = "tfstate"                       
#     key                  = "prod.terraform.tfstate"        
#     use_azuread_auth     = true                        
# }
# }
