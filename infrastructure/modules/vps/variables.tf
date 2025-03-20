variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
  default     = ""
}

variable "server_name" {
  type        = string
}

variable "region" {
  description = "Hetzner Cloud Region"
  type        = string
  default     = "nbg1" # Nuremberg 1
}

variable "ssh_public_key" {
  description = "SSH public key for server access"
  type        = string
}

variable "server_type" {
  description = "Server type to create"
  type        = string
  default     = "cx11" # Entry level instance
}

variable "os_type" {
  description = "Operating system image"
  type        = string
  default     = "ubuntu-22.04"
}

