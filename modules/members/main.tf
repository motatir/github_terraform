# adding users to teams 
resource "github_team_membership" "ib_teams_membership" {
  for_each = { for index, lan_id in var.gh_members[*] : lan_id => lan_id } # * is a splat operator when we get null values this will return a empty list
  #required fields are team_id and username
  team_id  = var.team_id
  username = each.value

}


# This will validate whether member has a github access or not
data "github_user" "validate_user" { 
  for_each = { for index, lan_id in var.gh_members[*] : lan_id => lan_id }
  username = each.value
  
}




