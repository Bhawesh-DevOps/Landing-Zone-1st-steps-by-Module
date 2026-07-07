variable "rgs" {}
resource "azurerm_resource_group" "mango" {
 for_each = var.rgs
        name = each.value.name
        location = each.value.location
}


