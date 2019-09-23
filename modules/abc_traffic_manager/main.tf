resource "azurerm_traffic_manager_profile" "traffic_mgr" {
  name                        = "tm-${var.sub_name}-global-${var.system_name}-${var.app_name}-${var.name_suffix}"
  resource_group_name         = "${var.resource_group.name}"
  traffic_routing_method      = "Priority"

  dns_config {
    relative_name = "tm-${var.sub_name}-global-${var.system_name}-${var.app_name}-${var.name_suffix}"
    ttl           = 30
  }

  monitor_config {
    protocol = "https"
    port     = 443
    path     = "/"
  }

}

resource "azurerm_traffic_manager_endpoint" "region_1" {
  name                        = "${var.app_service_1.name}"
  resource_group_name         = "${var.resource_group.name}"
  profile_name                = "${azurerm_traffic_manager_profile.traffic_mgr.name}"
  target_resource_id          = "${var.app_service_1.id}"
  type                        = "azureEndpoints"
  priority                    = 10
}

resource "azurerm_traffic_manager_endpoint" "region_2" {
  name                        = "${var.app_service_2.name}"
  resource_group_name         = "${var.resource_group.name}"
  profile_name                = "${azurerm_traffic_manager_profile.traffic_mgr.name}"
  target_resource_id          = "${var.app_service_2.id}"
  type                        = "azureEndpoints"
  priority                    = 20
}
