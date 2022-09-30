resource "github_team_repository" "some_team_repo" {
  team_id    = var.team_id
  for_each   = { for key, repository in var.repositories : repository => repository }
  repository = each.key
  permission = var.repo_permission
}
