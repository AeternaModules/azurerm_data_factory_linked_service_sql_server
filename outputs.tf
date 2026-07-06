output "data_factory_linked_service_sql_servers" {
  description = "All data_factory_linked_service_sql_server resources"
  value       = azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers
}
output "data_factory_linked_service_sql_servers_additional_properties" {
  description = "List of additional_properties values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.additional_properties]
}
output "data_factory_linked_service_sql_servers_annotations" {
  description = "List of annotations values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.annotations]
}
output "data_factory_linked_service_sql_servers_connection_string" {
  description = "List of connection_string values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.connection_string]
}
output "data_factory_linked_service_sql_servers_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.data_factory_id]
}
output "data_factory_linked_service_sql_servers_description" {
  description = "List of description values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.description]
}
output "data_factory_linked_service_sql_servers_integration_runtime_name" {
  description = "List of integration_runtime_name values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.integration_runtime_name]
}
output "data_factory_linked_service_sql_servers_key_vault_connection_string" {
  description = "List of key_vault_connection_string values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.key_vault_connection_string]
}
output "data_factory_linked_service_sql_servers_key_vault_password" {
  description = "List of key_vault_password values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.key_vault_password]
}
output "data_factory_linked_service_sql_servers_name" {
  description = "List of name values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.name]
}
output "data_factory_linked_service_sql_servers_parameters" {
  description = "List of parameters values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.parameters]
}
output "data_factory_linked_service_sql_servers_user_name" {
  description = "List of user_name values across all data_factory_linked_service_sql_servers"
  value       = [for k, v in azurerm_data_factory_linked_service_sql_server.data_factory_linked_service_sql_servers : v.user_name]
}

