module "key_vault" {
    source = "../modules/abc_key_vault"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_1}"
    system_name     = "${var.system_name}"

    resource_group  = "${module.resource_group_common.resource_group}"

    TENANT_ID       = "${var.TENANT_ID}"
}
