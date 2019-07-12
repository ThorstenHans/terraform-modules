variable "namespace_name" {
  type        = string
  description = "Service Bus Namespace name (will be prefixed with 'sbns-')"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group where the Container Registry instance will be created"
}

variable "location" {
  type        = string
  description = "Azure datacenter where the Container Registry instance will be created"
}

variable "namespace_sku" {
  type        = string
  description = "Azure ServiceBus SKU (OPTIONAL: defaults to Standard)"
  default     = "Standard"
}

variable "namespace_capacity" {
  type        = number
  description = "Specifies the capacity. When sku is Premium can be 1, 2 or 4. When sku is Basic or Standard can be 0 only"
}


variable "enable_partitioning" {
  type        = bool
  description = "Specifies if the Queue should use partitioning (OPTIONAL: defaults to true)"
  default     = true
}


variable "tags" {
  type        = map
  description = "Custom tags that will be assigned with the new Application Insights instance"
  default     = {}
}
