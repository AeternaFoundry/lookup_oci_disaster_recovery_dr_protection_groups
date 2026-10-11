variable "disaster_recovery_dr_protection_groups_lookup" {
  description = <<EOT
Map of disaster_recovery_dr_protection_groups_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - dr_protection_group_id
    - lifecycle_sub_state
    - role
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id         = string
    display_name           = optional(string)
    dr_protection_group_id = optional(string)
    lifecycle_sub_state    = optional(string)
    role                   = optional(string)
    state                  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

