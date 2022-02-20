variable "vnetName" {
    type        = string
    description = "Name of the Azure Compute Gallery"
}

variable "resourceGroupName" {
    type        = string
    description = "Name of the Resource Group to place the ACG into"
}

variable "addressSpace" {
    type         = list
    description  = "An array of the address spaces to configure for the Virtual Network"
    default      = ["10.0.0.0/16"]
}   

variable "dnsServers" {
    type        = list
    description = "An array of the DNS servers to configure for the Virtual Network"
}  

variable "subnetNames" {
    type        = list(string)
    description = "A list of names for the subnets"
}
variable "subnetAddressPrefix" {
    type        = list(string)  
    description = "A list of address prefixes to be used for subnets"
}

variable "location" {
    type        = string
    description = "Region location to deploy the ACG into"
}

variable "tags" {
    type        = map
    description = "Tags used when deploying the ACG"
}