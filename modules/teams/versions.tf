terraform {
  required_providers {

    github = {
      source  = "integrations/github"
      version = "~> 5.3.0"
    }
  }
  required_version = ">= 1.0.11"
}
