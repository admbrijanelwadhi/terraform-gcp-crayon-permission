variable "project_id" {
  description = "The ID of the project to apply IAM bindings to"
  type        = string
}

variable "roles" {
  description = <<EOF
    A map of roles to members. The key is the role, and the value is a list of members.eg roles = {
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
EOF
  type        = map(list(string))
  default = {}
}
