variable "waf_ipsets" {
  description = <<EOT
Map of waf_ipsets, attributes below
Required:
    - name
Optional:
    - ip_set_descriptors (block):
        - type (required)
        - value (required)
EOT

  type = map(object({
    name = string
    ip_set_descriptors = optional(list(object({
      type  = string
      value = string
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

