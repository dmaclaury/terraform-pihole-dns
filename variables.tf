variable "a_records" {
  description = "A records to create in PiHole. Should be a map of strings, the key name will be used for domain, and value for IP address."
  type        = map(string)
  default     = {}
}

variable "cname_records" {
  description = "CNAME records to create. Should be a map of strings, the key name will be used for domain, and value for target."
  type        = map(string)
  default     = {}
}