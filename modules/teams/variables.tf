
# variable to accept teams data from root module
variable "github_teams" {
    type = map(any)
    description = "It consists of name,description and privacy policy of each team"
}