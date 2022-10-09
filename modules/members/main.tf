# adding users to individual teams 
resource "github_team_membership" "team_membership" {
  count = var.team_members
  team_id  = var.team_id
  username = var.team_members[count.index]
}


# This will validate whether member has a github access or not
# data "github_user" "validate_user" {
#   for_each = { for index, lan_id in var.gh_members[*] : lan_id => lan_id }
#   username = each.value

# }




