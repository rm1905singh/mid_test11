data "azurerm_subnet" "datasubnet" {
  for_each             = var.nsgass
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_network_security_group" "datansg" {
  for_each            = var.nsgass
  name                = each.value.nsg_name
  resource_group_name = each.value.resource_group_name
}

# nsgs = {
#     nsg1 = {
#         name = "rmsnsga"
#          virtual_network_name =""
#           resource_group_name =""
#           subnet_name =""
#           network_security_group = ""

#     }
# }
