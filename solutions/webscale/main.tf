##########################################################################################################
## Solution containing the following:
#Azure Front Door (Cross-region load balancing + WAF functionality)
#Virtual Machine Scale Set (Web Application/Compute) 
#Azure DB for MySQL Flexible Server 
#Azure Cache for Redis (Sessions + Caching) 
#Azure Compute Gallery (Image Storage/Versioning) 
##########################################################################################################

terraform {
  required_providers {
      azurerm = {
          source    = "hashicorp/azurerm"
          version   =  "=2.94.0"
      }
  }
}

provider "azurerm" {
     features {}
}

#Deploy the Resource Group used for Ancillary Services (Keyvault + Azure Compute Gallery)
resource "azurerm_resource_group" "ancillaryservices" {
    name = "rg-uks-ancillary-services-01"
    location = "UK South"
}

 

