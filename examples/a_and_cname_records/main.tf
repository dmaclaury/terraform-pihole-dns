terraform {
  required_providers {
    pihole = {
      source = "ryanwholey/pihole"
    }
  }
}

provider "pihole" {
  url       = "<PIHOLE_URL>"
  api_token = "<PIHOLE_API_TOKEN>"
}

module "pihole_internal_dns" {
  source = "../.."
  a_records = [
    {
      domain     = "arecord1"
      ip_address = "10.11.12.13"
    },
    {
      domain     = "arecord2.example.com"
      ip_address = "10.11.12.14"
    }
  ]
  cname_records = [
    {
      domain = "cnamerecord1"
      target = "cname.example.com"
    },
    {
      domain = "cnamerecord2"
      target = "arecord2.example.com"
    }
  ]
}