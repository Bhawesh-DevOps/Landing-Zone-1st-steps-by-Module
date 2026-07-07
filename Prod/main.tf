variable "resource_group" {}
variable "virtual_network" {}
variable "subnet" {}


module "azurerm_resource_group" {
    source = "../../module/resource_group"
     rgs = var.resource_group
  }


  module "azurerm_virtual_network" {
    depends_on = [ module.azurerm_resource_group ]
   source = "../../module/virtual_network"
   vnet1 = var.virtual_network
}

module "azurerm_subnet" {
    depends_on = [ module.azurerm_virtual_network ]
    source = "../../module/subnet"
    sbt = var.subnet
}

