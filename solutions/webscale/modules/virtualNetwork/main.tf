resource "azurerm_virtual_network" "vnet" {
    name                    = var.vnetName
    resource_group_name     = var.resourceGroupName
    location                = var.location
    address_space           = var.addressSpace
    dns_servers             = var.dnsServers
    tags                    = var.tags
}