data "http" "github_api" {
  for_each = { for index, lan_id in var.org_members[*] : upper(lan_id) => lan_id }
  url    = "https://github.service.anz/api/v3/users/${each.value}"
  # method = "HEAD"
  
}


resource "github_membership" "membership_for_org" {
  for_each = { for index, lan_id in var.org_members[*] : upper(lan_id) => lan_id }
  username = each.value

  lifecycle {
    precondition {
      condition = jsondecode(data.http.github_api[each.key].response_body).suspended_at == null
      error_message = "${each.value} is suspended user"
    }
  }
}