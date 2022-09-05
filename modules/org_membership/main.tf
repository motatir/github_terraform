resource "github_membership" "membership_for_org" {
  for_each = { for index, lan_id in var.org_members[*] : lan_id => lan_id }
  username = each.value
  
}