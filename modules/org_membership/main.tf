resource "github_membership" "membership_for_org" {
  count    = length(var.org_members)
  username = var.org_members[count.index]
}