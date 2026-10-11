output "logging_saved_queries_id" {
  description = "Map of id values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no id are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logging_saved_queries_create_time" {
  description = "Map of create_time values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no create_time are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "logging_saved_queries_deletion_policy" {
  description = "Map of deletion_policy values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no deletion_policy are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "logging_saved_queries_description" {
  description = "Map of description values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no description are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.description if v.description != null && length(v.description) > 0 }
}
output "logging_saved_queries_display_name" {
  description = "Map of display_name values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no display_name are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "logging_saved_queries_location" {
  description = "Map of location values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no location are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.location if v.location != null && length(v.location) > 0 }
}
output "logging_saved_queries_logging_query" {
  description = "Map of logging_query values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no logging_query are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => one(v.logging_query) if v.logging_query != null && length(v.logging_query) > 0 }
}
output "logging_saved_queries_name" {
  description = "Map of name values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no name are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logging_saved_queries_ops_analytics_query" {
  description = "Map of ops_analytics_query values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no ops_analytics_query are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => one(v.ops_analytics_query) if v.ops_analytics_query != null && length(v.ops_analytics_query) > 0 }
}
output "logging_saved_queries_parent" {
  description = "Map of parent values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no parent are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "logging_saved_queries_update_time" {
  description = "Map of update_time values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no update_time are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "logging_saved_queries_visibility" {
  description = "Map of visibility values across all logging_saved_queries, keyed the same as var.logging_saved_queries except keys with no visibility are omitted"
  value       = { for k, v in google_logging_saved_query.logging_saved_queries : k => v.visibility if v.visibility != null && length(v.visibility) > 0 }
}

