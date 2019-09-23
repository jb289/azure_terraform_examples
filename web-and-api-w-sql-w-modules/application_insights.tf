module "application_insights" {
    source = "../modules/abc_application_insights"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_1}"
    system_name     = "${var.system_name}"

    resource_group  = "${module.resource_group_common.resource_group}"
}
