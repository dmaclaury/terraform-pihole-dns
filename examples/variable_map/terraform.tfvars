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