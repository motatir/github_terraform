resource "github_team_repository" "team_repo" {
  team_id    = var.team_id
  for_each   = { for key, repository in var.repositories : upper(repository) => repository }
  repository = each.value
  permission = var.repo_permission
}
