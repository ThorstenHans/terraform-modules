variable "name" {
  type = string
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group where the Container Registry instance will be created"
}

variable "location" {
  type        = string
  description = "Azure datacenter where the Container Registry instance will be created"
}

variable "create_application_insights" {
  type    = bool
  default = true
}

variable "create_storage_account" {
  type    = bool
  default = true
}

variable "create_app_service_plan" {
  type    = bool
  default = true
}

variable "app_service_plan_id" {
  type        = string
  description = "Id of an existing App Service Plan (OPTIONAL)"
  default     = ""
}

variable "app_service_plan_sku_tier" {
  type    = string
  default = "Dynamic"
}

variable "app_service_plan_sku_size" {
  type    = string
  default = "Y1"
}

variable "storage_account_tier" {
  type        = string
  description = "Storage Account Pricing Tier"
  default     = "Standard"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Storage Account Replication Type"
  default     = "LRS"
}

variable "storage_account_primary_connection_string" {
  type        = string
  description = "Primary ConnectionString of an existing Storage Account (OPTIONAL)"
  default     = ""
}

variable "application_insights_instrumentation_key" {
  type    = string
  default = ""
}

variable "function_app_version" {
  type        = string
  description = "Version of the FunctionApp (~1 or beta)"
  default     = "beta"
}

variable "tags" {
  type        = map
  description = "Custom tags that will be assigned with the new Application Insights instance"
  default     = {}
}
