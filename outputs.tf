output "entitlements_id" {
  description = "Map of id values across all entitlements, keyed the same as var.entitlements except keys with no id are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "entitlements_allow_cluster_create" {
  description = "Map of allow_cluster_create values across all entitlements, keyed the same as var.entitlements except keys with no allow_cluster_create are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.allow_cluster_create if v.allow_cluster_create != null }
}
output "entitlements_allow_instance_pool_create" {
  description = "Map of allow_instance_pool_create values across all entitlements, keyed the same as var.entitlements except keys with no allow_instance_pool_create are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.allow_instance_pool_create if v.allow_instance_pool_create != null }
}
output "entitlements_databricks_sql_access" {
  description = "Map of databricks_sql_access values across all entitlements, keyed the same as var.entitlements except keys with no databricks_sql_access are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.databricks_sql_access if v.databricks_sql_access != null }
}
output "entitlements_group_id" {
  description = "Map of group_id values across all entitlements, keyed the same as var.entitlements except keys with no group_id are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "entitlements_provider_config" {
  description = "Map of provider_config values across all entitlements, keyed the same as var.entitlements except keys with no provider_config are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "entitlements_service_principal_id" {
  description = "Map of service_principal_id values across all entitlements, keyed the same as var.entitlements except keys with no service_principal_id are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.service_principal_id if v.service_principal_id != null && length(v.service_principal_id) > 0 }
}
output "entitlements_user_id" {
  description = "Map of user_id values across all entitlements, keyed the same as var.entitlements except keys with no user_id are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "entitlements_workspace_access" {
  description = "Map of workspace_access values across all entitlements, keyed the same as var.entitlements except keys with no workspace_access are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.workspace_access if v.workspace_access != null }
}
output "entitlements_workspace_consume" {
  description = "Map of workspace_consume values across all entitlements, keyed the same as var.entitlements except keys with no workspace_consume are omitted"
  value       = { for k, v in databricks_entitlements.entitlements : k => v.workspace_consume if v.workspace_consume != null }
}

