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

    "APPINSIGHTS_INSTRUMENTATIONKEY"                  = "${var.application_insights_instrumentation_key}"
    "APPINSIGHTS_PROFILERFEATURE_VERSION"             = "1.0.0"
    "APPINSIGHTS_SNAPSHOTFEATURE_VERSION"             = "1.0.0"
    "ApplicationInsightsAgent_EXTENSION_VERSION"      = "~2"
    "DiagnosticServices_EXTENSION_VERSION"            = "~3"
    "InstrumentationEngine_EXTENSION_VERSION"         = "disabled"
    "SOME_KEY"                                        = "some-value"
    "SnapshotDebugger_EXTENSION_VERSION"              = "disabled"
    "XDT_MicrosoftApplicationInsights_BaseExtensions" = "disabled"
    "XDT_MicrosoftApplicationInsights_Mode"           = "recommended"

  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }

  client_affinity_enabled = false
}
