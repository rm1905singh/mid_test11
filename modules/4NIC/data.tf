data "azurerm_subnet" "datasubnet" {
  for_each            = var.nics
  name                = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}
data "azurerm_public_ip" "pip_data_block" {
    for_each = var.nics
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}