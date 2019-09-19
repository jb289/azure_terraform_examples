resource "azurerm_app_service_plan" "asp1" {
  name                = "asp-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}"
  location            = "${azurerm_resource_group.rg1.location}"
  resource_group_name = "${azurerm_resource_group.rg1.name}"

  sku {
    tier = "Standard"
    size = "S1"
    capacity = 2
  }
}

resource "azurerm_app_service_plan" "asp2" {
  name                = "asp-${var.sub_name}-${var.sub_loc_abbrev_2}-${var.system_name}"
  location            = "${azurerm_resource_group.rg2.location}"
  resource_group_name = "${azurerm_resource_group.rg2.name}"

  sku {
    tier = "Standard"
    size = "S1"
    capacity = 2
  }
}
