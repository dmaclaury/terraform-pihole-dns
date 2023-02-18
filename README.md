# terraform-pihole-dns
Terraform module for PiHole local dns records

## Provider Configuration

The `PiHole` provider must be configured. This can be done by setting the following environment variables:

* `PIHOLE_URL` - URL of your PiHole server.
* `PIHOLE_API_TOKEN` - API Token for you PiHole admin user.

This module was NOT tested using the `PIHOLE_PASSWORD` authentication option. It may or may not work as expected.

You can also configure the provider with a `provider` block like this:

```terraform
provider "pihole" {
  url       = "<PIHOLE_URL>"
  api_token = "<PIHOLE_API_TOKEN>"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_pihole"></a> [pihole](#requirement\_pihole) | ~> 0.0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_pihole"></a> [pihole](#provider\_pihole) | 0.0.12 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [pihole_cname_record.cname_record](https://registry.terraform.io/providers/ryanwholey/pihole/latest/docs/resources/cname_record) | resource |
| [pihole_dns_record.a_record](https://registry.terraform.io/providers/ryanwholey/pihole/latest/docs/resources/dns_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a_records"></a> [a\_records](#input\_a\_records) | A records to create in PiHole. Should be a map of strings, the key name will be used for domain, and value for IP address. | `map(string)` | `{}` | no |
| <a name="input_cname_records"></a> [cname\_records](#input\_cname\_records) | CNAME records to create. Should be a map of strings, the key name will be used for domain, and value for target. | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->