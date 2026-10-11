output "waf_ipsets_id" {
  description = "Map of id values across all waf_ipsets, keyed the same as var.waf_ipsets"
  value       = { for k, v in aws_waf_ipset.waf_ipsets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waf_ipsets_arn" {
  description = "Map of arn values across all waf_ipsets, keyed the same as var.waf_ipsets"
  value       = { for k, v in aws_waf_ipset.waf_ipsets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "waf_ipsets_ip_set_descriptors" {
  description = "Map of ip_set_descriptors values across all waf_ipsets, keyed the same as var.waf_ipsets"
  value       = { for k, v in aws_waf_ipset.waf_ipsets : k => v.ip_set_descriptors if v.ip_set_descriptors != null && length(v.ip_set_descriptors) > 0 }
}
output "waf_ipsets_name" {
  description = "Map of name values across all waf_ipsets, keyed the same as var.waf_ipsets"
  value       = { for k, v in aws_waf_ipset.waf_ipsets : k => v.name if v.name != null && length(v.name) > 0 }
}

