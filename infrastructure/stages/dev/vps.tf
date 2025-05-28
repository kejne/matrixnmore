module "vps" {
  source = "../../modules/vps"

  server_name = "matrixnmore"
  region      = "hel1"
  server_type = "cx22"

  hcloud_token = var.hcloud_token
  ssh_public_key = file("~/.ssh/id_ed25519.pub")
}
