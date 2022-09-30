terraform {
  required_providers {

    github = {
      source  = "integrations/github"
      version = "~> 5.3.0"
    }
  }
  required_version = ">= 1.2.9"
}

#required authentications are:-
#  1. personal access token 
#  2. name of the organization in owner field
#  3. base_url if the enterprise github
provider "github" {
  base_url = "https://github.service.anz/"
  owner    = "css"
}


module "teams" {
  source       = "./modules/teams"
  for_each     = local.github_ib_teams
  github_teams = each.value
  depends_on = [
    module.org_membership
  ]

}

module "members" {

  source     = "./modules/members"
  for_each   = tomap(yamldecode(file("./users.yaml"))).teams
  team_id    = module.teams[each.key].teams_id #injecting team id from teams module to members module
  gh_members = each.value[*]



}
module "org_membership" {
  source      = "./modules/org_membership"
  org_members = tolist(setsubtract(compact(distinct(flatten(values(tomap(yamldecode(file("./users.yaml"))).teams)))), var.admins))
  # values is used to get only the values present in map (will be getting a multiple array of members)
  # flatten is used to make multiple arrays into a single array
  # distinct is used to remove the duplicate entries
  # compact is used to remove the null value
  # setsubtract is used to remove the organisation admins from the organisation members

}

module "team_repository" {
  source          = "./modules/team_repository"
  for_each        = local.github_ib_teams
  team_id         = module.teams[each.key].teams_id
  repositories    = each.value.repositories == ["all"] ? data.github_repositories.repos.names : each.value.repositories
  team_name       = each.key
  repo_permission = each.value.permission
}


data "github_repositories" "repos" {
  query = "org:css archived:no"
}
