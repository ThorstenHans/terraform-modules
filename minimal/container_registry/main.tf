resource "azurerm_container_registry" "container_registry" {
  name                = "${var.name}"
  sku                 = "${var.sku}"
  admin_enabled       = false
  resource_group_name = "${var.name}"
  location            = "${var.location}"
  tags                = "${var.tags}"
}
