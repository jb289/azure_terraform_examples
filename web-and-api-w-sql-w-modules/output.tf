output "rg1" {
  value = "${module.resource_group_1.resource_group}"
}

output "rg2" {
  value = "${module.resource_group_2.resource_group}"
}

output "rgcommon" {
  value = "${module.resource_group_common.resource_group}"
}