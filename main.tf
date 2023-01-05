resource "azurerm_static_site" "this" {
  name                = "swa-${var.project}-${var.env}-${var.location}-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group
  sku_tier            = var.sku_tier
  sku_size            = var.sku_size
  tags                = var.tags
  identity {
    type         = var.identity_ids == null ? "SystemAssigned" : "SystemAssigned, UserAssigned"
    identity_ids = var.identity_ids
  }
}

resource "azurerm_static_site_custom_domain" "this" {
  count = var.domain_name == null ? 0 : 1
  static_site_id  = azurerm_static_site.this.id
  domain_name     = var.domain_name
  validation_type = var.validation_type
}
