resource "azurerm_sql_failover_group" "sql_failover_group" {
  name                        = "asfg-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}"
  resource_group_name = "${azurerm_sql_server.sql_server_primary.resource_group_name}"
  server_name         = "${azurerm_sql_server.sql_server_primary.name}"
  databases           = ["${azurerm_sql_database.sql_database_primary.id}"]
  partner_servers {
      id = "${azurerm_sql_server.sql_server_secondary.id}"
  }

  read_write_endpoint_failover_policy {
    mode = "Automatic"
    grace_minutes = 60
  }
}