resource "azurerm_app_service_plan" "app_service_plan" {
  count               = "${var.create_app_service_plan ? 1 : 0}"
  name                = "asp-${var.name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  kind                = "FunctionApp"
  sku {
    tier = "${var.app_service_plan_sku_tier}"
    size = "${var.app_service_plan_sku_size}"
  }
  tags = "${var.tags}"
}

module "app_insights" {
  source = "../application_insights"

  instance_count      = "${var.create_application_insights ? 1 : 0}"
  application_type    = "web"
  name                = "ai-${var.name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  tags                = "${var.tags}"
}

module "storage_account" {
  source = "../storage_account"

  name                = "sa${replace(replace(var.name, "-",""),"_","")}"
  instance_count      = "${var.create_storage_account ? 1 : 0}"
  tier                = "${var.storage_account_tier}"
  replication_type    = "${var.storage_account_replication_type}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  tags                = "${var.tags}"
}

resource "azurerm_function_app" "function_app" {
  name                      = "fn-app-${var.name}"
  resource_group_name       = "${var.resource_group_name}"
  location                  = "${var.location}"
  storage_connection_string = "${var.create_storage_account ? element(module.storage_account.primary_connection_string, 0) : var.storage_account_primary_connection_string}"
  app_service_plan_id       = "${var.create_app_service_plan ? azurerm_app_service_plan.app_service_plan.0.id : var.app_service_plan_id}"
  version                   = "${var.function_app_version}"
  tags                      = "${var.tags}"
  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = "${var.create_application_insights ? element(module.app_insights.instrumentation_key, 0) : var.application_insights_instrumentation_key}"
  }
}


