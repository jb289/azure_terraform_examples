resource "azurerm_app_service" "wa1" {
  name                = "wa-${var.sub_name}-${var.sub_loc_abbrev_1}-${var.system_name}-${var.app_name}"
  location            = "${azurerm_resource_group.rg1.location}"
  resource_group_name = "${azurerm_resource_group.rg1.name}"
  app_service_plan_id = "${azurerm_app_service_plan.asp1.id}"

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
    always_on                = true
    default_documents        = ["hostingstart.html"]
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }

  client_affinity_enabled = false
}

resource "azurerm_app_service" "wa2" {
  name                = "wa-${var.sub_name}-${var.sub_loc_abbrev_2}-${var.system_name}-${var.app_name}"
  location            = "${azurerm_resource_group.rg2.location}"
  resource_group_name = "${azurerm_resource_group.rg2.name}"
  app_service_plan_id = "${azurerm_app_service_plan.asp2.id}"

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
    always_on                = true
    default_documents        = ["hostingstart.html"]
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }

  client_affinity_enabled = false
}



