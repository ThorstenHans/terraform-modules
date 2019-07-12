resource "azurerm_servicebus_namespace" "sbns" {
  name                = "sbns-${var.namespace_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  sku                 = "${var.namespace_sku}"
  capacity            = "${var.namespace_capacity}"
  tags                = "${var.tags}"
}

resource "azurerm_servicebus_queue" "sbqueue" {
  name                = "sbns-${var.namespace_name}-queue"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"

  namespace_name      = "${azurerm_servicebus_namespace.sbns.name}"
  enable_partitioning = "${var.enable_partitioning}"
}
