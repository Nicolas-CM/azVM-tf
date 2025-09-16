output "resource_group_name" {
  description = "Nombre del grupo de recursos creado"
  value       = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  description = "Nombre de la red virtual"
  value       = module.network.vnet_name
}

output "subnet_id" {
  description = "ID de la subred"
  value       = module.network.subnet_id
}

output "nsg_name" {
  description = "Nombre del Network Security Group"
  value       = module.security.nsg_name
}

output "vm_name" {
  description = "Nombre de la máquina virtual"
  value       = module.vm.vm_name
}

output "public_ip" {
  description = "Dirección IP pública de la máquina virtual"
  value       = module.vm.public_ip
}
