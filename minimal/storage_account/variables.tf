variable "instance_count" {
    type = "number"
    description = "provide 0 to skip creation"
    default = 1
}


variable "name" {
  type        = "string"
  description = "Name of the Storage Account"
}

variable "resource_group_name" {
  type        = "string"
  description = "Name of the Azure Resource Group where the Storage Account will be created"
}

variable "location" {
  type        = "string"
  description = "Azure datacenter where the Storage Account will be created"
}

variable "tier" {
  type        = "string"
  description = "Storage Account Pricing Tier"
  default     = "Standard"
}

variable "replication_type" {
  type        = "string"
  description = "Storage Account Replication Type"
  default     = "LRS"
}

variable "tags" {
  type        = "map"
  description = "Custom tags that will be assigned with the new Storage Accunt"
  default     = {}
}
