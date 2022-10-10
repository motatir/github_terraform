variable "team_members" {
  type        = list(string)
  description = "list of members in the respective team"
}
variable "team_id" {
  type        = string
  description = "Team id for the respective team"
}

variable "admins" {
  type        = list(string)
  description = "Owners of the organisation"
}
