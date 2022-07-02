
resource "azurerm_linux_virtual_machine" "Appserver" {
  count               = "__machine__"
  name                = "terraform-app-server${count.index}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1s"
  admin_username      = "__machine_user__"
  admin_password      = "__pass_app__"
  disable_password_authentication = false
  network_interface_ids = [element(azurerm_network_interface.App-network.*.id,count.index)]




  os_disk {
    name                 = "OsDisk${count.index}"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}
