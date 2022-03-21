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
features {} #as per the default setting if i delete vm the storage will also delete
}

provider "azurerm" {
    features {
        virtual_machine {
          delete_os_disk_on_deletion = false #this will ensure that when the vm get destroyed disk is not delete
        }
    }
    alias = "provider2-westus"
    #clientid
    #environment
    #subscription
}



