variable "do_token" {
	description = "Digital Ocean Access Key"
}

variable "pub_key" {
	description = "Path to your public key. e.g. ~/.ssh/digitalocean_rsa.pub"
}

variable "pvt_key" {
	description = "Path to your public key. e.g. ~/.ssh/digitalocean_rsa"
}

variable "ssh_fingerprint" {
	description = "SSH fingerprint. "
}

variable "domain_name" {
	description = "domain name for droplet. e.g. www.example.com"
}

