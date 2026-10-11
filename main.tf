data "aws_cloudwatch_log_groups" "cloudwatch_log_groups_lookup" {
  for_each = var.cloudwatch_log_groups_lookup

  log_group_name_prefix = each.value.log_group_name_prefix
  region                = each.value.region
}

