resource "azurerm_app_service_plan" "asp" {
  name                = "asp-${var.sub_name}-${var.sub_loc_abbrev}-${var.system_name}"
  location            = "${var.resource_group.location}"
  resource_group_name = "${var.resource_group.name}"

  sku {
    tier = "Standard"
    size = "S1"
    capacity = 2
  }
}