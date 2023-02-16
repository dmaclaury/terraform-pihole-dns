resource "pihole_dns_record" "a_record" {
  count  = length(var.a_records) > 0 ? length(var.a_records) : 0
  domain = var.a_records[count.index].domain
  ip     = var.a_records[count.index].ip_address
}

resource "pihole_cname_record" "cname_record" {
  count  = length(var.cname_records) > 0 ? length(var.cname_records) : 0
  domain = var.cname_records[count.index].domain
  target = var.cname_records[count.index].target
}