module "api_app_service_1" {
    source = "../modules/abc_app_service"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_1}"
    system_name     = "${var.system_name}"
    app_name        = "${var.app_name}"
    name_prefix     = "api"

    resource_group    = "${module.resource_group_1.resource_group}"
    app_service_plan  = "${module.app_service_plan_1.app_service_plan}"
}

module "api_app_service_2" {
    source = "../modules/abc_app_service"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_2}"
    system_name     = "${var.system_name}"
    app_name        = "${var.app_name}"
    name_prefix     = "api"

    resource_group    = "${module.resource_group_2.resource_group}"
    app_service_plan  = "${module.app_service_plan_2.app_service_plan}"
}