resource "azurerm_key_vault" "kv1" {
  name                        = "kv-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}-common"
  location                    = "${azurerm_resource_group.common.location}"
  resource_group_name         = "${azurerm_resource_group.common.name}"
  enabled_for_disk_encryption = true
  tenant_id                   = "${var.TENANT_ID}"

  sku_name = "standard"

}