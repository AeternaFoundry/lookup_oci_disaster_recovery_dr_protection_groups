data "oci_disaster_recovery_dr_protection_groups" "disaster_recovery_dr_protection_groups_lookup" {
  for_each = var.disaster_recovery_dr_protection_groups_lookup

  compartment_id         = each.value.compartment_id
  display_name           = each.value.display_name
  dr_protection_group_id = each.value.dr_protection_group_id
  lifecycle_sub_state    = each.value.lifecycle_sub_state
  role                   = each.value.role
  state                  = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

