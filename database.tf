

resource "azurerm_private_dns_zone" "default" {
  name                = "__name__-pdz.postgres.database.azure.com"
  resource_group_name = azurerm_resource_group.rg.name

  depends_on = [azurerm_subnet_network_security_group_association.merge]
}

resource "azurerm_private_dns_zone_virtual_network_link" "default" {
  name                  = "__name__-pdzvnetlink.com"
  private_dns_zone_name = azurerm_private_dns_zone.default.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
  resource_group_name   = azurerm_resource_group.rg.name
}

resource "azurerm_postgresql_flexible_server" "postgres-server--staging--" {
  name                   = "__database_name__"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  version                = "13"
  delegated_subnet_id    = azurerm_subnet.Database-subnet.id
  private_dns_zone_id    = azurerm_private_dns_zone.default.id
  administrator_login    = "__db_user__"
  administrator_password = "__pass_db__"
  zone                   = "1"
  storage_mb             = 131072
  sku_name               = "GP_Standard_D2s_v3"
  backup_retention_days  = 7

  depends_on = [azurerm_private_dns_zone_virtual_network_link.default]
}
resource "azurerm_postgresql_flexible_server_database" "ps-db" {
  name      = "__name__-db"
  server_id = azurerm_postgresql_flexible_server.postgres-server--staging--.id
  collation = "en_US.UTF8"
  charset   = "UTF8"
}

resource "azurerm_postgresql_flexible_server_configuration" "postgres_off_require_secure_transport" {
  name      = "require_secure_transport"
  server_id = azurerm_postgresql_flexible_server.postgres-server--staging--.id
  value     = "off"
}

