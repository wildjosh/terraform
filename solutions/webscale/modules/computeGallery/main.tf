resource "azurerm_shared_image_gallery" "acg" {
    name                = var.acgName
    resource_group_name = var.resourceGroupName
    location            = var.location
    tags                = var.tags
    description         = "Shared Image Gallery, used for storing images for VMSS"
}