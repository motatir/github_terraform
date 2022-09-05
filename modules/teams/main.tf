# resource to create a team
# required fields are name of the team
resource "github_team" "ib_teams" {
  name        = var.github_teams.name# name of the team
  description = var.github_teams.description
  privacy     = var.github_teams.privacy # Must be one of secret or closed
}


