resource "azurerm_resource_group" "rg" {

    name = "rg-${var.sub_name}-${var.sub_loc_abbrev}-${var.system_name}${var.suffix == "" ? "" : "-${var.suffix}"}"
    location = "${var.sub_loc}"

    tags = {
        Application = "${var.tag_application}",
        Owner = "${var.tag_owner}"
    }
}


