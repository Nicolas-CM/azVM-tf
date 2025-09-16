variable "resource_group_name" {
  type        = string
  default     = "rg-vm-demo"
  description = "Nombre del grupo de recursos"
}

variable "location" {
  type        = string
  default     = "East US"
  description = "Ubicación de la infraestructura"
}

variable "prefix" {
  type        = string
  default     = "demo"
  description = "Prefijo para nombrar los recursos"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B1s"
  description = "Tamaño de la máquina virtual"
}

variable "admin_username" {
  type        = string
  default     = "nicouser"
  description = "Usuario administrador de la VM"
}

variable "admin_password" {
  type        = string
  default     = "Nico2024!"
  description = "Contraseña del usuario administrador"
}
