output "project_iam_bindings" {
  description = "List of IAM bindings that were created"
  value       = google_project_iam_binding.project_roles
}


output "billing_iam_bindings" {
  description = "List of IAM bindings that were created"
  value       = google_billing_account_iam_binding.billing_roles
}


output "org_iam_bindings" {
  description = "List of IAM bindings that were created"
  value       = google_organization_iam_binding.project_roles
}
