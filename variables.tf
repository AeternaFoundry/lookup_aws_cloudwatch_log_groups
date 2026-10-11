variable "cloudwatch_log_groups_lookup" {
  description = <<EOT
Map of cloudwatch_log_groups_lookup, attributes below
Optional:
    - log_group_name_prefix
    - region
EOT

  type = map(object({
    log_group_name_prefix = optional(string)
    region                = optional(string)
  }))
}

