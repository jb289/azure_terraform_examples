########################################################################
# outputs
########################################################################

output "application_insights" {
  value = "${azurerm_application_insights.ai}"
}

output "instrumentation_key" {
  value = "${azurerm_application_insights.ai.instrumentation_key}"
}