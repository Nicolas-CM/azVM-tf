provider "azurerm" {
  features {}
  subscription_id = "079ab1f2-9528-44da-ba22-d60a88fdb0b8"
}

# Grupo de recursos
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Módulo de red
module "network" {
  source                  = "./modules/network"
  resource_group_name     = azurerm_resource_group.rg.name
  location                = azurerm_resource_group.rg.location
  prefix                  = var.prefix
  vnet_address_space      = ["10.0.0.0/16"]
  subnet_address_prefixes = ["10.0.1.0/24"]
}

# Módulo de seguridad
module "security" {
  source              = "./modules/security"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  prefix              = var.prefix
}

# Módulo de VM
module "vm" {
  source              = "./modules/vm"
  vm_name             = "${var.prefix}-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.network.subnet_id
}

# Asociación de la NIC con el NSG
resource "azurerm_network_interface_security_group_association" "nic_nsg" {
  network_interface_id      = module.vm.nic_id
  network_security_group_id = module.security.nsg_id
}
