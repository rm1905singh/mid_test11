resource "azurerm_public_ip" "pipblock" {
    for_each = var.pips
  name                    = each.value.name
  location                = each.value.location
  resource_group_name     = each.value.resource_group_name
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = 30

  tags = {
    environment = "dev"
  }
}