output "instrumentation_key" {
  value       = "${azurerm_application_insights.application_insight.*.instrumentation_key}"
  description = "The Application Insights Instrumentation Key"
}
