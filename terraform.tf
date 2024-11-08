terraform {
  backend "remote" {
    organization = "Devopsvpc-001"

    workspaces {
      name = "Devopsvpc-001"
    }
  }
}