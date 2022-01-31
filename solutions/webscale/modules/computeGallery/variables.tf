variable "acgName" {
    type = string
    description = "Name of the Azure Compute Gallery"
}

variable "resourceGroupName" {
    type = string
    description = "Name of the Resource Group to place the ACG into"
}

variable "location" {
    type = string
    description = "Region location to deploy the ACG into"
}

variable "tags" {
    type = map
    description = "Tags used when deploying the ACG"
}