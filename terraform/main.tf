provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "proxy" {
  zone_id = var.cloudflare_zone
  name    = "proxy"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "wireguard" {
  zone_id = var.cloudflare_zone
  name    = "wireguard"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "vaultwarden" {
  zone_id = var.cloudflare_zone
  name    = "vaultwarden"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "portainer" {
  zone_id = var.cloudflare_zone
  name    = "portainer"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "homepage" {
  zone_id = var.cloudflare_zone
  name    = "homepage"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "pihole" {
  zone_id = var.cloudflare_zone
  name    = "pihole"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "nextcloud" {
  zone_id = var.cloudflare_zone
  name    = "nextcloud"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "ansible" {
  zone_id = var.cloudflare_zone
  name    = "ansible"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}