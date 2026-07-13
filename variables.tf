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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_linked_service_sql_server's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: connection_string
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_connection_string.linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_connection_string.secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_password.linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_password.secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: integration_runtime_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: parameters[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: annotations[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: additional_properties[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: user_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

