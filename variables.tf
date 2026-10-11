variable "data_safe_security_assessment_checks_lookup" {
  description = <<EOT
Map of data_safe_security_assessment_checks_lookup, attributes below
Required:
    - security_assessment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - contains_references
    - contains_severity
    - key
    - suggested_severity
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    security_assessment_id    = string
    access_level              = optional(string)
    compartment_id_in_subtree = optional(bool)
    contains_references       = optional(list(string))
    contains_severity         = optional(list(string))
    key                       = optional(string)
    suggested_severity        = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_safe_security_assessment_checks_lookup : (
        alltrue([for item in v.checks : (item.patch_operations == null || alltrue([for item in item.patch_operations : (item.operation == null || (contains([for v in ["INSERT", "MERGE", "REMOVE"] : lower(v)], lower(item.operation))))]))])
      )
    ])
    error_message = "must be one of: \"INSERT\", \"MERGE\", \"REMOVE\""
  }
}

