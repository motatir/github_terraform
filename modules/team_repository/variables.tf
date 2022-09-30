variable "team_id" {
  type        = string
  description = "Team id for the respective team"
}
variable "team_name" {
  type        = string
  description = "Team name for the respective team"
}
variable "repositories" {
  type = list(any)

}

variable "repo_permission" {
  type = string

}