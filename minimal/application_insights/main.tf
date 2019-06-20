resource "azurerm_application_insights" "application_insight" {
  name                = "${var.name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  application_type    = "${var.application_type}"
  count               = "${var.instance_count}"
  tags                = "${var.tags}"
}
