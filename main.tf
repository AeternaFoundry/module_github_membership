resource "github_membership" "memberships" {
  for_each = var.memberships

  username             = each.value.username
  downgrade_on_destroy = each.value.downgrade_on_destroy
  role                 = each.value.role
}

