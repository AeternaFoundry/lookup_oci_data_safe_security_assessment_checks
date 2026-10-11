output "data_safe_security_assessment_checks_lookup_id" {
  description = "Map of id values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_security_assessment_checks_lookup_access_level" {
  description = "Map of access_level values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no access_level are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.access_level if v.access_level != null && length(v.access_level) > 0 }
}
output "data_safe_security_assessment_checks_lookup_checks" {
  description = "Map of checks values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no checks are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.checks if v.checks != null && length(v.checks) > 0 }
}
output "data_safe_security_assessment_checks_lookup_compartment_id_in_subtree" {
  description = "Map of compartment_id_in_subtree values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no compartment_id_in_subtree are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.compartment_id_in_subtree if v.compartment_id_in_subtree != null }
}
output "data_safe_security_assessment_checks_lookup_contains_references" {
  description = "Map of contains_references values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no contains_references are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.contains_references if v.contains_references != null && length(v.contains_references) > 0 }
}
output "data_safe_security_assessment_checks_lookup_contains_severity" {
  description = "Map of contains_severity values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no contains_severity are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.contains_severity if v.contains_severity != null && length(v.contains_severity) > 0 }
}
output "data_safe_security_assessment_checks_lookup_filter" {
  description = "Map of filter values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "data_safe_security_assessment_checks_lookup_key" {
  description = "Map of key values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no key are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.key if v.key != null && length(v.key) > 0 }
}
output "data_safe_security_assessment_checks_lookup_security_assessment_id" {
  description = "Map of security_assessment_id values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no security_assessment_id are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.security_assessment_id if v.security_assessment_id != null && length(v.security_assessment_id) > 0 }
}
output "data_safe_security_assessment_checks_lookup_suggested_severity" {
  description = "Map of suggested_severity values across all data_safe_security_assessment_checks_lookup, keyed the same as var.data_safe_security_assessment_checks_lookup except keys with no suggested_severity are omitted"
  value       = { for k, v in data.oci_data_safe_security_assessment_checks.data_safe_security_assessment_checks_lookup : k => v.suggested_severity if v.suggested_severity != null && length(v.suggested_severity) > 0 }
}

