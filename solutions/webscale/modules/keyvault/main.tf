resource "azurerm_key_vault" "kv1" {
    name                        =
    location                    =
    resource_group_name         =
    enabled_for_disk_encryption = 
    tenant_id                   =
    soft_delete_retention_days  = 
    purge_protection_enabled    = 
    sku_name                    =

    access_policy {
        tenant_id               =
        object_id               =


        key_permissions     = [
            "Get",
        ] 

        secret_permissions  = [
            "Get",
        ]

        storage_permissions = [
            "Get",
        ]
    }

}