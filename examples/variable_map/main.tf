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
  source        = "../.."
  a_records     = var.a_records
  cname_records = var.cname_records
}

variable "a_records" {
  description = "A records to create in PiHole"
  type        = map(string)
  default     = {}
}

variable "cname_records" {
  description = "CNAME records to create"
  type        = map(string)
  default     = {}
}