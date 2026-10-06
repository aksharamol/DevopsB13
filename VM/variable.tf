
variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "nic_name" {
  type = string
}

variable "public_ip_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_address_prefix" {
  type = list(string)
}

variable "public_key_path" {
  type = string
}
