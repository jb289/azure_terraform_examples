module "traffic_manager_api" {
    source = "../modules/abc_traffic_manager"

    sub_name        = "${var.sub_name}"
    system_name     = "${var.system_name}"
    app_name        = "${var.app_name}"
    name_suffix     = "api"

    resource_group    = "${module.resource_group_common.resource_group}"
    app_service_1  = "${module.api_app_service_1.app_service}"
    app_service_2  = "${module.api_app_service_2.app_service}"
}