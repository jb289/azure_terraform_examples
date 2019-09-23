module "traffic_manager_web" {
    source = "../modules/abc_traffic_manager"

    sub_name        = "${var.sub_name}"
    system_name     = "${var.system_name}"
    app_name        = "${var.app_name}"
    name_suffix     = "web"

    resource_group    = "${module.resource_group_common.resource_group}"
    app_service_1  = "${module.web_app_service_1.app_service}"
    app_service_2  = "${module.web_app_service_2.app_service}"
}