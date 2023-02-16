resource "pihole_dns_record" "a_record" {
  for_each = var.a_records
  domain = each.key
  ip     = each.value
}

resource "pihole_cname_record" "cname_record" {
  for_each = var.cname_records
  domain = each.key
  target = each.value
}