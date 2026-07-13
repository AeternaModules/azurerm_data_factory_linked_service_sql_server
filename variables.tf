variable "data_factory_linked_service_sql_servers" {
  description = <<EOT
Map of data_factory_linked_service_sql_servers, attributes below
Required:
    - data_factory_id
    - name
Optional:
    - additional_properties
    - annotations
    - connection_string
    - description
    - integration_runtime_name
    - parameters
    - user_name
    - key_vault_connection_string (block):
        - linked_service_name (required)
        - secret_name (required)
    - key_vault_password (block):
        - linked_service_name (required)
        - secret_name (required)
EOT

  type = map(object({
    data_factory_id          = string
    name                     = string
    additional_properties    = optional(map(string))
    annotations              = optional(list(string))
    connection_string        = optional(string)
    description              = optional(string)
    integration_runtime_name = optional(string)
    parameters               = optional(map(string))
    user_name                = optional(string)
    key_vault_connection_string = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
    key_vault_password = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.connection_string == null || (length(v.connection_string) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.key_vault_connection_string == null || (length(v.key_vault_connection_string.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.key_vault_connection_string == null || (length(v.key_vault_connection_string.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.key_vault_password == null || (length(v.key_vault_password.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.key_vault_password == null || (length(v.key_vault_password.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.parameters == null || (alltrue([for x in v.parameters : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.annotations == null || (alltrue([for x in v.annotations : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.additional_properties == null || (alltrue([for x in v.additional_properties : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sql_servers : (
        v.user_name == null || (length(v.user_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

