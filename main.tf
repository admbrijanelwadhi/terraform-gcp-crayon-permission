
locals {
  current_time_utc = timestamp()                 # Gets the current time in UTC
 
}

resource "google_project_iam_binding" "project_roles" {
  for_each = var.project_roles

  project = var.project_id
  role    = each.key  # The IAM role

  members = var.project_roles[each.key]  # The list of members for that role
}


resource "google_billing_account_iam_binding" "billing_roles" {
  for_each = var.billing_roles

  billing_account_id = var.billing_account_id
  role    = each.key  # The IAM role

  members = var.billing_roles[each.key]  # The list of members for that role
}

resource "google_organization_iam_binding" "project_roles" {
  for_each = var.organization_roles

  org_id =  var.organization_id
  role    = each.key  # The IAM role

  members = var.organization_roles[each.key]  # The list of members for that role
}

