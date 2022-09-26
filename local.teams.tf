locals {
  # teams data
  github_ib_teams = {
    ib-admin-release = {
      description = "Approving the change to master"
      name        = "ib-admin-release"
      privacy     = "closed"
    }
    ib-review-finacle = {
      description = "PR reviewer for Finacle components"
      name        = "ib-review-finacle"
      privacy     = "closed"
    }
    ib-admin = {
      description = "IB Acceleration Team"
      name        = "ib-admin"
      privacy     = "closed"
    }
    ib-bot = {
      description = "Only Service Account for automation"
      name        = "ib-bot"
      privacy     = "closed"
    }
    ib-developers = {
      description = "IB Engineers Pool"
      name        = "ib-developers"
      privacy     = "closed"
    }
    ib-release-lead = {
      description = "IB Release Lead Team"
      name        = "ib-release-lead"
      privacy     = "closed"
    }
    ib-reviewer-codefresh = {
      description = "Reviewing Codefresh changes in IB"
      name        = "ib-reviewer-codefresh"
      privacy     = "closed"
    }
    ib-reviewer-k8 = {
      description = "Reviewing K8 Changes in IB"
      name        = "ib-reviewer-k8"
      privacy     = "closed"
    }
  
  }
}