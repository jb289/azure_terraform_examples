resource "azurerm_sql_server" "sql_server_primary" {
  name                        = "asdb-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}"
  location                    = "${azurerm_resource_group.rg1.location}"
  resource_group_name         = "${azurerm_resource_group.rg1.name}"
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}
