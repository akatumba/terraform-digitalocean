# Create a new domain record
resource "digitalocean_domain" "default-domain" {
   name = "${var.domain_name}"
   ip_address = "${digitalocean_droplet.ubuntu-www.ipv4_address}"
}

resource "digitalocean_record" "CNAME-www" {
  domain = "${digitalocean_domain.default-domain.name}"
  type = "CNAME"
  name = "www"
  value = "@"
}