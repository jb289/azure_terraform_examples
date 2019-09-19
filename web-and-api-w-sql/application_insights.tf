resource "azurerm_application_insights" "ai1" {
  name                = "ai-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}-common"
  location            = "${azurerm_resource_group.common.location}"
  resource_group_name = "${azurerm_resource_group.common.name}"
  application_type    = "web"
}
