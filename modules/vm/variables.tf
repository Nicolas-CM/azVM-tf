variable "vm_name" {
  type        = string
  description = "Nombre de la máquina virtual"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "location" {
  type        = string
  description = "Ubicación de la infraestructura"
}

variable "vm_size" {
  type        = string
  description = "Tamaño de la máquina virtual"
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Usuario administrador de la VM"
}

variable "admin_password" {
  type        = string
  description = "Contraseña del usuario administrador"
}

variable "subnet_id" {
  type        = string
  description = "ID de la subred donde se conecta la VM"
}

variable "os_image" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  description = "Configuración de la imagen del sistema operativo"
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
