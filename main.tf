resource "databricks_entitlements" "entitlements" {
  for_each = var.entitlements

  allow_cluster_create       = each.value.allow_cluster_create
  allow_instance_pool_create = each.value.allow_instance_pool_create
  databricks_sql_access      = each.value.databricks_sql_access
  group_id                   = each.value.group_id
  service_principal_id       = each.value.service_principal_id
  user_id                    = each.value.user_id
  workspace_access           = each.value.workspace_access
  workspace_consume          = each.value.workspace_consume

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

