resource "azurerm_shared_image_gallery" "acg" {
    name                = var.acgName
    resource_group_name = var.resourceGroupName
    location            = var.location
    tags                = var.tags
    description         = "Shared Image Gallery, used for storing images for VMSS"
}

resource "azurerm_linux_virtual_machine_scale_set" "vmss" {
    name = var.vmssName
    resource_group_name = var.resourceGroupName
    location = var.location
    sku = var.vmssSku
    instances = var.instanceCount
    admin_username = var.adminUsername

    admin_ssh_key {
        username = var.adminUsername
        public_key = ""
    }
  
    source_image_reference {
        publisher = ""
        offer = ""
        sku = ""
        version = ""
    }

    os_disk {
        storage_account_type = ""
        caching = ""
    }

    network_interface {
        name = ""
        primary = ""

        ip_configuration {
            name = "${var.vmssName}-nic-"
            primary = true
            subnet_id = var.subnetId
        }
    }
}