variable "a_records" {
  description = "A records to create in PiHole"
  type = list(object(
    {
      domain     = string
      ip_address = string
    }
  ))
  default = []
}

variable "cname_records" {
  description = "CNAME records to create"
  type = list(object(
    {
      domain = string
      target = string
    }
  ))
  default = []
}