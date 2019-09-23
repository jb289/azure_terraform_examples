resource "azurerm_key_vault" "kv" {
  name                        = "kv-${var.sub_name}-${var.sub_loc_abbrev}-${var.system_name}-common"
  location                    = "${var.resource_group.location}"
  resource_group_name         = "${var.resource_group.name}"
  enabled_for_disk_encryption = true
  tenant_id                   = "${var.TENANT_ID}"

  sku_name = "standard"

}
