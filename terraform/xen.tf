# Instruct terraform to download the provider on `terraform init`
terraform {
  required_providers {
    xenorchestra = {
      source = "terra-farm/xenorchestra"
      version = "~> 0.3.0"
    }
  }
}

# Configure the XenServer Provider
provider "xenorchestra" {
  # Must be ws or wss
  url      = "ws://192.168.0.12" # Or set XOA_URL environment variable
  username = "admin@admin.net"              # Or set XOA_USER environment variable
  password = "admin"              # Or set XOA_PASSWORD environment variable

  # This is false by default and
  # will disable ssl verification if true.
  # This is useful if your deployment uses
  # a self signed certificate but should be
  # used sparingly!
  insecure = true              # Or set XOA_INSECURE environment variable to any value
}
