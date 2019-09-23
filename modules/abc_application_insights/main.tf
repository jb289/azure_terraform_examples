resource "azurerm_application_insights" "ai" {
  name                = "ai-${var.sub_name}-${var.sub_loc_abbrev}-${var.system_name}-common"
  location            = "${var.resource_group.location}"
  resource_group_name = "${var.resource_group.name}"
  application_type    = "web"
}