data "oci_data_safe_security_assessment_checks" "data_safe_security_assessment_checks_lookup" {
  for_each = var.data_safe_security_assessment_checks_lookup

  security_assessment_id    = each.value.security_assessment_id
  access_level              = each.value.access_level
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  contains_references       = each.value.contains_references
  contains_severity         = each.value.contains_severity
  key                       = each.value.key
  suggested_severity        = each.value.suggested_severity

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

