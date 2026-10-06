
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "azurerm_key_vault" "kv" {
  name                = var.key_vault_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  tenant_id = data.azurerm_client_config.current.tenant_id
  sku_name  = "standard"

  # Use Azure RBAC for access control
  enable_rbac_authorization = true

  # Security settings
  soft_delete_retention_days = 7
  purge_protection_enabled   = true

  # Require HTTPS
  public_network_access_enabled = true

  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
