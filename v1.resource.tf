#create resource group

resource "azurerm_resource_group" "my_demo_rg1" { #this will be for my dev enbv
  location = "eastus"
  name     = "my-demo-rg1"
} #the first resource group created it will be created with default setting. 

#create resource group

resource "azurerm_resource_group" "my_demo_rg2" { #prod environment
  location = "West US"
  name     = "my-demo-rg2"
  provider = azurerm.provider2-westus
}


#i need to keep the storage but i dont want to use the default provider setting