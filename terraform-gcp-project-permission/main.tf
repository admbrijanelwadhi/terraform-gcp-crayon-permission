provider "google" {
  project = var.project_id
}

data "google_project" "project" {
}

locals {
  current_time_utc = timestamp()                 # Gets the current time in UTC
 
}

resource "google_project_iam_binding" "project_roles" {
  for_each = var.roles

  project = var.project_id
  role    = each.key  # The IAM role

  members = var.roles[each.key]  # The list of members for that role
}

