provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo" {
  name     = "rg-jenkins-demo"
  location = "East US"
}
