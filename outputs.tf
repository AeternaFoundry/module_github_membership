output "memberships_id" {
  description = "Map of id values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "memberships_downgrade_on_destroy" {
  description = "Map of downgrade_on_destroy values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.downgrade_on_destroy if v.downgrade_on_destroy != null }
}
output "memberships_etag" {
  description = "Map of etag values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "memberships_role" {
  description = "Map of role values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.role if v.role != null && length(v.role) > 0 }
}
output "memberships_username" {
  description = "Map of username values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.username if v.username != null && length(v.username) > 0 }
}

