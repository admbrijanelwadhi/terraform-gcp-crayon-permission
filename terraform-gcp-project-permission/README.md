# Google Cloud Project IAM Binding Module

This Terraform module allows you to assign multiple IAM roles and their corresponding members to a Google Cloud project. The module uses `google_project_iam_binding` to manage roles and supports passing an arbitrary number of roles and members dynamically.

## Features

- Assign multiple IAM roles to a Google Cloud project.
- Define multiple members (users, groups, or service accounts) for each role.
- Easily extendable to accommodate various IAM configurations.

## Usage

### Example

```hcl
module "project_iam_bindings" {
  source     = "./modules/project_iam_binding"  # Path to the module
  project_id = var.project_id

  roles = {
    "roles/viewer" = [
      "user:alice@example.com",
      "user:bob@example.com",
    ]
    "roles/editor" = [
      "group:editors@example.com",
      "user:carol@example.com",
    ]
    "roles/billing.resourceCosts.get" = [
      "user:finance@example.com"
    ]
  }
}
