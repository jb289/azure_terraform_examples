resource "azurerm_traffic_manager_profile" "traffic_mgr_api" {
  name                        = "tm-${var.sub_name}-global-${var.system_name}-${var.app_name}-api"
  resource_group_name         = "${azurerm_resource_group.common.name}"
  traffic_routing_method      = "Priority"

  dns_config {
    relative_name = "tm-${var.sub_name}-global-${var.system_name}-${var.app_name}-api"
    ttl           = 30
  }

  monitor_config {
    protocol = "https"
    port     = 443
    path     = "/"
  }

}

resource "azurerm_traffic_manager_endpoint" "region_1_api" {
  name                        = "${azurerm_app_service.api1.name}"
  resource_group_name         = "${azurerm_resource_group.common.name}"
  profile_name                = "${azurerm_traffic_manager_profile.traffic_mgr_api.name}"
  target_resource_id          = "${azurerm_app_service.api1.id}"
  type                        = "azureEndpoints"
  priority                    = 10
}

resource "azurerm_traffic_manager_endpoint" "region_2_api" {
  name                        = "${azurerm_app_service.api2.name}"
  resource_group_name         = "${azurerm_resource_group.common.name}"
  profile_name                = "${azurerm_traffic_manager_profile.traffic_mgr_api.name}"
  target_resource_id          = "${azurerm_app_service.api2.id}"
  type                        = "azureEndpoints"
  priority                    = 20
}