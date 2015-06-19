# Create a new domain record
resource "digitalocean_domain" "default" {
   name = "example.com"
   ip_address = "${digitalocean_droplet.www-1.ipv4_address}"
}

resource "digitalocean_record" "CNAME-www" {
  domain = "${digitalocean_domain.default.name}"
  type = "CNAME"
  name = "www"
  value = "@"
}