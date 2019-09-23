resource "azurerm_app_service" "app" {
  name                = "${var.name_prefix}-${var.sub_name}-${var.sub_loc_abbrev}-${var.system_name}-${var.app_name}"
  location            = "${var.resource_group.location}"
  resource_group_name = "${var.resource_group.name}"
  app_service_plan_id = "${var.app_service_plan.id}"

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
