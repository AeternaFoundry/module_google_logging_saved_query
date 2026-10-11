variable "logging_saved_queries" {
  description = <<EOT
Map of logging_saved_queries, attributes below
Required:
    - display_name
    - location
    - name
    - parent
    - visibility
Optional:
    - deletion_policy
    - description
    - logging_query (block):
        - filter (required)
        - summary_field_end (optional)
        - summary_field_start (optional)
        - summary_fields (optional, block):
            - field (optional)
    - ops_analytics_query (block):
        - sql_query_text (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    location        = string
    name            = string
    parent          = string
    visibility      = string
    deletion_policy = optional(string)
    description     = optional(string)
    logging_query = optional(object({
      filter              = string
      summary_field_end   = optional(number)
      summary_field_start = optional(number)
      summary_fields = optional(list(object({
        field = optional(string)
      })))
    }))
    ops_analytics_query = optional(object({
      sql_query_text = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

