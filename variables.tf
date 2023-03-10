variable "admins" {
  type        = list(string)
  description = "Owners of the organisation"

}

variable "github_org" {
  type        = string
  description = "Github Organization Name"
}

variable "github_url" {
  type        = string
  description = "Github url in ANZ"
}
