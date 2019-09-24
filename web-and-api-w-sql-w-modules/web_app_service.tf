module "web_app_service_1" {
    source = "../modules/abc_app_service"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_1}"
    system_name     = "${var.system_name}"
    app_name        = "${var.app_name}"
    name_prefix     = "wa"

    resource_group    = "${module.resource_group_1.resource_group}"
    app_service_plan  = "${module.app_service_plan_1.app_service_plan}"

    application_insights_instrumentation_key = "${module.application_insights.instrumentation_key}"
}

module "web_app_service_2" {
    source = "../modules/abc_app_service"

    sub_name        = "${var.sub_name}"
    sub_loc_abbrev  = "${var.sub_loc_abbrev_2}"
    system_name     = "${var.system_name}"
    app_name        = "${var.app_name}"
    name_prefix     = "wa"

    resource_group    = "${module.resource_group_2.resource_group}"
    app_service_plan  = "${module.app_service_plan_2.app_service_plan}"

    application_insights_instrumentation_key = "${module.application_insights.instrumentation_key}"
}

resource "null_resource" "webhook_web_example" {
  # Changes to the ids will cause this to re-provision
  triggers = {
    app_instance_ids = "${module.web_app_service_1.app_service.id},${module.web_app_service_2.app_service.id}"
  }

  provisioner "local-exec" {
    command = "echo ********* LOCAL-EXEC - WEB APP 1 - ${module.web_app_service_1.app_service.default_site_hostname} *********"
  }

  provisioner "local-exec" {
    command = "echo ********* LOCAL-EXEC - WEB APP 2 - ${module.web_app_service_2.app_service.default_site_hostname} *********"
  }

}