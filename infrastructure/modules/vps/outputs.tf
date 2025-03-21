output "server_ip" {
  description = "Public IP address of the server"
  value       = hcloud_server.main.ipv4_address
}

output "server_status" {
  description = "Status of the server"
  value       = hcloud_server.main.status
}

output "network_id" {
  description = "ID of the created network"
  value       = hcloud_network.network.id
}

