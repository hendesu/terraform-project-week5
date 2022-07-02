
resource "azurerm_resource_group" "rg" {
  name      = var.__resource_group_name_prefix__
  location  = var.resource_group_location
}

