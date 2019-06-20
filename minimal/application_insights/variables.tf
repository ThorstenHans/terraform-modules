variable "instance_count" {
    type = "number"
    description = "provide 0 to skip creation"
    default = 1
}

variable "name" {
  type        = "string"
  description = "Name of the Application Insights instance"
}
variable "application_type" {
  type        = "string"
  description = "Type of the Application Insight instance must be one of (web other java MobileCenter phone store ios Node.JS)"
  default     = "other"
}

variable "resource_group_name" {
  type        = "string"
  description = "Name of the Azure Resource Group where the Application Insights instance will be created"
}

variable "location" {
  type        = "string"
  description = "Azure datacenter where the Application Insights instance will be created"
}

variable "tags" {
  type        = "map"
  description = "Custom tags that will be assigned with the new Application Insights instance"
  default     = {}
}
