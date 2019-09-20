resource "azurerm_resource_group" "rg1" {
        name = "rg-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}"
        location = "${var.sub_loc_1}"

        tags = {
         Application = "${var.tag_application}",
         Owner = "${var.tag_owner}"
        }
}

resource "azurerm_resource_group" "rg2" {
        name = "rg-${var.sub_name}-${var.sub_loc_abbrev_2}-${var.system_name}"
        location = "${var.sub_loc_2}"

        tags = {
         Application = "${var.tag_application}",
         Owner = "${var.tag_owner}"
        }
}

resource "azurerm_resource_group" "common" {
        name = "rg-${var.sub_name}-${var.sub_loc_abbrev_2}-${var.system_name}-common"
        location = "${var.sub_loc_1}"

        tags = {
         Application = "${var.tag_application}",
         Owner = "${var.tag_owner}"
        }
}

