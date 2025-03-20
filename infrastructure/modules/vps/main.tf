resource "hcloud_ssh_key" "default" {
  name       = "ansible"
  public_key = var.ssh_public_key
}

# Create a basic network
resource "hcloud_network" "network" {
  name     = "network"
  ip_range = "10.0.0.0/16"
}

# Create a network subnet
resource "hcloud_network_subnet" "network_subnet" {
  network_id   = hcloud_network.network.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.0.1.0/24"
}

# Create a basic server
resource "hcloud_server" "main" {
  name        = var.server_name
  server_type = var.server_type
  image       = var.os_type
  location    = var.region

  network {
    network_id = hcloud_network.network.id
  }

  ssh_keys = [hcloud_ssh_key.default.id]

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }

  labels = {
    managed_by = "opentofu"
  }
}

