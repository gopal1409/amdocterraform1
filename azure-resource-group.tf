#terrform setting block
#this terraform setting block change whenever you change your cloud provider. 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" #it will go to registry.terraform.io and download all the plugin needed to communicate with azure.
      version = "=2.97.0"
    }
  }
}



#configure the microsoft azure provider
provider "azurerm" {
features {}
}


#create resource group

resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name     = "my-demo-rg1"
}