########################################################################
# outputs
########################################################################

output "sample_output" {
  description = "Sample output var"
  value       = "sample_value"
}

output "resource_group" {
  value = "${azurerm_resource_group.rg}"
}