########################################################################
# outputs
########################################################################

output "azurerm_sql_failover_group" {
  value = "${azurerm_sql_failover_group.sql_failover_group}"
}

output "azurerm_sql_database_primary" {
  value = "${azurerm_sql_database.sql_database_primary}"
}
