output "primary_connection_string" {
  value       = "${azurerm_storage_account.storage_account.*.primary_connection_string}"
  description = "The connection string associated with the primary location"
  sensitive   = true
}

output "secondary_connection_string" {
  value       = "${azurerm_storage_account.storage_account.*.secondary_connection_string}"
  description = "The connection string associated with the secondary location"
  sensitive   = true
}

output "primary_access_key" {
  value       = "${azurerm_storage_account.storage_account.*.primary_access_key}"
  description = "The primary access key for the storage account."
  sensitive   = true
}

output "secondary_access_key" {
  value       = "${azurerm_storage_account.storage_account.*.secondary_access_key}"
  description = "The secondary access key for the storage account."
  sensitive   = true
}
