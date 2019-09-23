module "azure_sql_db_failovergroup" {
    source = "../modules/abc_azure_sql_db_failovergroup"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev_1  = "${var.sub_loc_abbrev_1}"
    sub_loc_abbrev_2  = "${var.sub_loc_abbrev_2}"
    system_name     = "${var.system_name}"
    app_name     = "${var.app_name}"

    resource_group_1  = "${module.resource_group_1.resource_group}"
    resource_group_2  = "${module.resource_group_2.resource_group}"
}