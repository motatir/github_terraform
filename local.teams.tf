locals {
  # teams data
  github_ib_teams = {
    ib-admin = {
      description  = "Approving the change to master"
      name         = "ib-admin"
      privacy      = "closed"
      repositories = ["all"]
      permission   = "admin"
    }
    ib-bot = {
      description  = "Only Service Account for automation"
      name         = "ib-bot"
      privacy      = "closed"
      repositories = ["all"]
      permission   = "push"
    }
    ib-developers = {
      description  = "IB Engineers Pool"
      name         = "ib-developers"
      privacy      = "closed"
      repositories = ["all"]
      permission   = "push"
    }
    ib-review-finacle = {
      description  = "PR reviewer for Finacle components"
      name         = "ib-review-finacle"
      privacy      = "closed"
      repositories = ["Limits", "CSO-Web", "Finacle-11"]
      permission   = "push"
    }
    ib-reviewer-codefresh = {
      description  = "Reviewing Codefresh changes in IB"
      name         = "ib-reviewer-codefresh"
      privacy      = "closed"
      repositories = ["codefresh-ib"]
      permission   = "push"
    }
    ib-reviewer-k8 = {
      description  = "Reviewing K8 Changes in IB"
      name         = "ib-reviewer-k8"
      privacy      = "closed"
      repositories = ["K8-Control-M", "gcp-ib", "openshift-finacle"]
      permission   = "push"
    }

  }
}
