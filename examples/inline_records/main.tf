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
  a_records = {
    "arecord1" = "10.11.12.13",
    "arecord2" = "10.11.12.14"
  }

  cname_records = {
    "cname1" = "arecord1",
    "cname2" = "arecord2",
  }
}