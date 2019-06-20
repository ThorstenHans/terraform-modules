output "function_app_hostname" {
  value = "${azurerm_function_app.function_app.default_hostname}"
}
output "application_insights_instrumentation_key" {
  value = "${module.app_insights.instrumentation_key}"
}

