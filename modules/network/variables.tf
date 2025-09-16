variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "location" {
  type        = string
  description = "Ubicación de la infraestructura"
}

variable "prefix" {
  type        = string
  description = "Prefijo para nombrar los recursos"
}

variable "vnet_address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Espacio de direcciones para la red virtual"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "Prefijos de direcciones para la subred"
}