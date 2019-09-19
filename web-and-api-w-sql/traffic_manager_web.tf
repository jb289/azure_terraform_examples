resource "azurerm_traffic_manager_profile" "traffic_mgr_web" {
  name                        = "tm-${var.sub_name}-global-${var.system_name}-${var.app_name}-web"
  resource_group_name         = "${azurerm_resource_group.common.name}"
  traffic_routing_method      = "Priority"

  dns_config {
    relative_name = "tm-${var.sub_name}-global-${var.system_name}-${var.app_name}-web"
    ttl           = 30
  }

  monitor_config {
    protocol = "https"
    port     = 443
    path     = "/"
  }

}

resource "azurerm_traffic_manager_endpoint" "region_1_web" {
  name                        = "${azurerm_app_service.wa1.name}"
  resource_group_name         = "${azurerm_resource_group.common.name}"
  profile_name                = "${azurerm_traffic_manager_profile.traffic_mgr_web.name}"
  target_resource_id          = "${azurerm_app_service.wa1.id}"
  type                        = "azureEndpoints"
  priority                    = 10
}

resource "azurerm_traffic_manager_endpoint" "region_2_web" {
  name                        = "${azurerm_app_service.wa2.name}"
  resource_group_name         = "${azurerm_resource_group.common.name}"
  profile_name                = "${azurerm_traffic_manager_profile.traffic_mgr_web.name}"
  target_resource_id          = "${azurerm_app_service.wa2.id}"
  type                        = "azureEndpoints"
  priority                    = 20
}