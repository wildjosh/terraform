##Deploy the virtual network
resource "azurerm_virtual_network" "vnet" {
    name                    = var.vnetName
    resource_group_name     = var.resourceGroupName
    location                = var.location
    address_space           = var.addressSpace
    dns_servers             = var.dnsServers
    tags                    = var.tags
}

##Deploy the subnets described in variables subnetNames // subnetAddressPrefix
resource "azurerm_subnet" "subnets" {
    count                   = length(var.subnetNames)
    name                    = var.subnetNames[count.index]
    resource_group_name     = var.resourceGroupName
    virtual_network_name    = var.vnetName
    address_prefixes        = [var.subnetAddressPrefix[count.index]]
}

