
module "rg1" {
    source = "../modules/abc_resource_group"

    sub_name        = "${var.sub_name}"

    sub_loc         = "${var.sub_loc_1}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_1}"

    app_name        = "${var.app_name}"
    system_name     = "${var.system_name}"

    tag_application = "${var.tag_application}"
    tag_owner       = "${var.tag_owner}"

}

module "rg2" {
    source = "../modules/abc_resource_group"

    sub_name        = "${var.sub_name}"

    sub_loc         = "${var.sub_loc_2}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_2}"

    app_name        = "${var.app_name}"
    system_name     = "${var.system_name}"

    tag_application = "${var.tag_application}"
    tag_owner       = "${var.tag_owner}"
}

