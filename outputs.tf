output "cloudwatch_log_groups_lookup_id" {
  description = "Map of id values across all cloudwatch_log_groups_lookup, keyed the same as var.cloudwatch_log_groups_lookup"
  value       = { for k, v in data.aws_cloudwatch_log_groups.cloudwatch_log_groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_log_groups_lookup_arns" {
  description = "Map of arns values across all cloudwatch_log_groups_lookup, keyed the same as var.cloudwatch_log_groups_lookup"
  value       = { for k, v in data.aws_cloudwatch_log_groups.cloudwatch_log_groups_lookup : k => v.arns if v.arns != null && length(v.arns) > 0 }
}
output "cloudwatch_log_groups_lookup_log_group_name_prefix" {
  description = "Map of log_group_name_prefix values across all cloudwatch_log_groups_lookup, keyed the same as var.cloudwatch_log_groups_lookup"
  value       = { for k, v in data.aws_cloudwatch_log_groups.cloudwatch_log_groups_lookup : k => v.log_group_name_prefix if v.log_group_name_prefix != null && length(v.log_group_name_prefix) > 0 }
}
output "cloudwatch_log_groups_lookup_log_group_names" {
  description = "Map of log_group_names values across all cloudwatch_log_groups_lookup, keyed the same as var.cloudwatch_log_groups_lookup"
  value       = { for k, v in data.aws_cloudwatch_log_groups.cloudwatch_log_groups_lookup : k => v.log_group_names if v.log_group_names != null && length(v.log_group_names) > 0 }
}
output "cloudwatch_log_groups_lookup_region" {
  description = "Map of region values across all cloudwatch_log_groups_lookup, keyed the same as var.cloudwatch_log_groups_lookup"
  value       = { for k, v in data.aws_cloudwatch_log_groups.cloudwatch_log_groups_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

