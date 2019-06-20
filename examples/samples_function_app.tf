module "function_app_with_everything" {
  source              = "../minimal/function_app"
  name                = "samplefunction"
  resource_group_name = "test"
  location            = "westeurope"
  tags = {
    responsible = "John Smith"
  }
}

output "function_app_hostname" {
  value = "${module.function_app_with_everything.function_app_hostname}"
}

output "ai_instrumentation_key" {
  value = "${module.function_app_with_everything.application_insights_instrumentation_key}"
}


