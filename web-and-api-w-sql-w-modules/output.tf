output "rg1" {
  value = "${module.resource_group_1.resource_group}"
}

output "rg2" {
  value = "${module.resource_group_2.resource_group}"
}

output "rgcommon" {
  value = "${module.resource_group_common.resource_group}"
}

output "asp1" {
  value = "${module.app_service_plan_1.app_service_plan}"
}

output "asp2" {
  value = "${module.app_service_plan_2.app_service_plan}"
}

output "webapp_1" {
  value = "${module.web_app_service_1.app_service}"
}

output "webapp_2" {
  value = "${module.web_app_service_2.app_service}"
}

output "subscriptions" {
  value = "${module.subscription_info.available_subscriptions}"
}
