terraform {
  required_version = "1.11.4"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}

provider "cloudflare" {
  api_token = var.CLOUDFLARE_API_TOKEN
}

resource "cloudflare_dns_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  content = "jyu-dev.pages.dev"
  type    = "CNAME"
  proxied = true
  ttl     = 1
  comment = "terraform"
}

resource "cloudflare_dns_record" "jyu-dev" {
  zone_id = var.zone_id
  name    = "jyu.dev"
  content = "jyu-dev.pages.dev"
  type    = "CNAME"
  proxied = true
  ttl     = 1
  comment = "terraform"
}

resource "cloudflare_dns_record" "shop" {
  zone_id = var.zone_id
  name    = "shop"
  content = "shops.myshopify.com"
  type    = "CNAME"
  proxied = false
  ttl     = 1
  comment = "terraform"
}
