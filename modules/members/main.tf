data "http" "github_api" {
  for_each = { for index, lan_id in var.team_members[*] : upper(lan_id) => lan_id }
  url    = "https://github.service.anz/api/v3/users/${each.value}"
  # method = "HEAD"
  
}



# adding users to individual teams 
resource "github_team_membership" "team_membership" {
  for_each = { for index, lan_id in var.team_members[*] : upper(lan_id) => lan_id }
  team_id  = var.team_id
  username = each.value
  role     = contains(var.admins, each.value) ? "maintainer" : "member"
    lifecycle {
    precondition {
      condition = jsondecode(data.http.github_api[each.key].response_body).suspended_at == null
    }
  }
}


# This will validate whether member has a github access or not
# data "github_user" "validate_user" {
#   for_each = { for index, lan_id in var.gh_members[*] : lan_id => lan_id }
#   username = each.value

# }




