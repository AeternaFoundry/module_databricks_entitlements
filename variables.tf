variable "entitlements" {
  description = <<EOT
Map of entitlements, attributes below
Optional:
    - allow_cluster_create
    - allow_instance_pool_create
    - databricks_sql_access
    - group_id
    - service_principal_id
    - user_id
    - workspace_access
    - workspace_consume
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    allow_cluster_create       = optional(bool)
    allow_instance_pool_create = optional(bool)
    databricks_sql_access      = optional(bool)
    group_id                   = optional(string)
    service_principal_id       = optional(string)
    user_id                    = optional(string)
    workspace_access           = optional(bool)
    workspace_consume          = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

