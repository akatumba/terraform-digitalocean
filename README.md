# terraform-digitalocean
playground for terraform and digital ocean provider. creates a digitalocean droplet with installed nginx reachable by specified domain name. Still under construction

# Usage
1. [Install Terraform](http://www.terraform.io/intro/getting-started/install.html)

2. [Create a personal access token for terraform from DigitalOcean](https://cloud.digitalocean.com/settings/applications)

3. add digital ocean domain name servers to your domain hoster. [The name servers are: ns1.digitalocean.com, ns1.digitalocean.com, ns3.digitalocean.com](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-host-name-with-digitalocean)

4. change domain name in resource `digitalocean_domain` from `example.com` to your domain

5. create file `terraform.tfvars` and provide your personal access token for digital ocean and your ssh configuration.
```
do_token = „YOUR_ACCESS_TOKEN“
ssh_fingerprint = „YOUR_SSH_FINGERPRINT“
pub_key = „~/.ssh/YOUR_PUBLIC_KEY.pub“
pvt_key = „~/.ssh/YOUR_PRIVATE_KEY“
```
6. Run `terraform plan` to create an execution plan or `terraform apply` without `terraform plan`to apply changes required to reach desired state of configuration

7. Run `terraform detroy` to destroy the Terraform-managed infrastructure
