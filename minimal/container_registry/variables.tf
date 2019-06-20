variable "name" {
  type        = "string"
  description = "Name of the Container Registry instance"
}

variable "resource_group_name" {
  type        = "string"
  description = "Name of the Azure Resource Group where the Container Registry instance will be created"
}

variable "location" {
  type        = "string"
  description = "Azure datacenter where the Container Registry instance will be created"
}

variable "sku" {
  type        = "string"
  description = "The SKU for the new Container Registry"
}

variable "tags" {
  type        = "map"
  description = "Custom tags that will be assigned with the new Application Insights instance"
  default     = {}
}
