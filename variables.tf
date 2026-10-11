variable "memberships" {
  description = <<EOT
Map of memberships, attributes below
Required:
    - username
Optional:
    - downgrade_on_destroy
    - role
EOT

  type = map(object({
    username             = string
    downgrade_on_destroy = optional(bool)
    role                 = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

