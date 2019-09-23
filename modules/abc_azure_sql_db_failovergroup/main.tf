resource "azurerm_sql_server" "sql_server_primary" {
  name                         = "asdb-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}"
  location                     = "${var.resource_group_1.location}"
  resource_group_name          = "${var.resource_group_1.name}"
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_server" "sql_server_secondary" {
  name                         = "asdb-${var.sub_name}-${var.sub_loc_abbrev_2}-${var.system_name}"
  location                     = "${var.resource_group_2.location}"
  resource_group_name          = "${var.resource_group_2.name}"
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_database" "sql_database_primary" {
  name                         = "db-${var.sub_name}-${var.system_name}-${var.app_name}"
  location                     = "${var.resource_group_1.location}"
  resource_group_name          = "${var.resource_group_1.name}"
  server_name                  = "${azurerm_sql_server.sql_server_primary.name}"
  edition                      = "Standard"
}

resource "azurerm_sql_failover_group" "azurerm_sql_failover_group" {
  name                         = "asfg-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}"
  resource_group_name          = "${var.resource_group_1.name}"
  server_name                  = "${azurerm_sql_server.sql_server_primary.name}"
  databases                    = ["${azurerm_sql_database.sql_database_primary.id}"]
  partner_servers {
      id = "${azurerm_sql_server.sql_server_secondary.id}"
  }

  read_write_endpoint_failover_policy {
    mode = "Automatic"
    grace_minutes = 60
  }
}