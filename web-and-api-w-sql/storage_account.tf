resource "azurerm_storage_account" "common" {
  name                     = "salab${var.sub_loc_abbrev_1}grs${var.system_name}"
  resource_group_name      = "${azurerm_resource_group.common.name}"
  location                 = "${azurerm_resource_group.common.location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "content" {
  name                  = "content"
  storage_account_name  = "${azurerm_storage_account.common.name}"
  container_access_type = "private"
}

resource "azurerm_storage_container" "backups" {
  name                  = "backups"
  storage_account_name  = "${azurerm_storage_account.common.name}"
  container_access_type = "private"
}
