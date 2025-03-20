module "vps" {
  source = "../../modules/vps"

  region      = "hel1"
  server_type = "cx22"

  hcloud_token = var.hcloud_token
  ssh_public_key = file("../../.ssh/id.pub")
}
