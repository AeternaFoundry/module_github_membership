output "memberships_id" {
  description = "Map of id values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.id }
}
output "memberships_downgrade_on_destroy" {
  description = "Map of downgrade_on_destroy values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.downgrade_on_destroy }
}
output "memberships_etag" {
  description = "Map of etag values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.etag }
}
output "memberships_role" {
  description = "Map of role values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.role }
}
output "memberships_username" {
  description = "Map of username values across all memberships, keyed the same as var.memberships"
  value       = { for k, v in github_membership.memberships : k => v.username }
}

