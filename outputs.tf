output "data_factory_linked_service_sql_servers_id" {
  description = "Map of id values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_linked_service_sql_servers_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_linked_service_sql_servers_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_linked_service_sql_servers_connection_string" {
  description = "Map of connection_string values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
}
output "data_factory_linked_service_sql_servers_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_linked_service_sql_servers_description" {
  description = "Map of description values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_linked_service_sql_servers_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.integration_runtime_name if v.integration_runtime_name != null && length(v.integration_runtime_name) > 0 }
}
output "data_factory_linked_service_sql_servers_key_vault_connection_string" {
  description = "Map of key_vault_connection_string values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.key_vault_connection_string if v.key_vault_connection_string != null && length(v.key_vault_connection_string) > 0 }
}
output "data_factory_linked_service_sql_servers_key_vault_password" {
  description = "Map of key_vault_password values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.key_vault_password if v.key_vault_password != null && length(v.key_vault_password) > 0 }
}
output "data_factory_linked_service_sql_servers_name" {
  description = "Map of name values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_linked_service_sql_servers_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_linked_service_sql_servers_user_name" {
  description = "Map of user_name values across all data_factory_linked_service_sql_servers, keyed the same as var.data_factory_linked_service_sql_servers"
  value       = { for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

