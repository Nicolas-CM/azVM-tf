output "vm_id" {
  description = "ID de la máquina virtual"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "Nombre de la máquina virtual"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "public_ip" {
  description = "Dirección IP pública de la máquina virtual"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "nic_id" {
  description = "ID de la interfaz de red"
  value       = azurerm_network_interface.nic.id
}
