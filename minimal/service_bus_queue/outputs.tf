output "queue_id" {
  value       = "${azurerm_servicebus_queue.sbqueue.id}"
  description = "The ServiceBus Queue identifiert"
}

output "namespace_id" {
  value       = "${azurerm_servicebus_namespace.sbns.id}"
  description = "The ServiceBus Namespace identifiert"
}

output "namespace_primary_connection_string" {
  value       = "${azurerm_servicebus_namespace.sbns.default_primary_connection_string}"
  description = "The primary connection string for the authorization rule RootManageSharedAccessKey."
  sensitive   = true
}

output "namespace_secondary_connection_string" {
  value       = "${azurerm_servicebus_namespace.sbns.default_secondary_connection_string}"
  description = "The secondary connection string for the authorization rule RootManageSharedAccessKey."
  sensitive   = true
}

output "namespace_primary_access_key" {
  value       = "${azurerm_servicebus_namespace.sbns.default_primary_key}"
  description = "The primary access key for the authorization rule RootManageSharedAccessKey."
  sensitive   = true
}

output "namespace_secondary_access_key" {
  value       = "${azurerm_servicebus_namespace.sbns.default_secondary_key}"
  description = "The secondary access key for the authorization rule RootManageSharedAccessKey."
  sensitive   = true
}
