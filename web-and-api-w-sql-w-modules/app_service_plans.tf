module "app_service_plan_1" {
    source = "../modules/abc_app_service_plan"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_1}"
    system_name     = "${var.system_name}"

    resource_group  = "${module.resource_group_1.resource_group}"
}

module "app_service_plan_2" {
    source = "../modules/abc_app_service_plan"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_2}"
    system_name     = "${var.system_name}"

    resource_group  = "${module.resource_group_2.resource_group}"
}