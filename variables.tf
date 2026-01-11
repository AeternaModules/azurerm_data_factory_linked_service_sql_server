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
}

