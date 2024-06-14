provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_zone" "example" {
  zone = var.cloudflare_zone
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone
  name    = "proxy"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone
  name    = "wireguard"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone
  name    = "vaultwarden"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone
  name    = "portainer"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone
  name    = "homepage"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone
  name    = "pihole"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone
  name    = "nextcloud"
  value   = "192.168.100.6"
  type    = "A"
  ttl     = 3600
}