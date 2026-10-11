resource "google_logging_saved_query" "logging_saved_queries" {
  for_each = var.logging_saved_queries

  display_name    = each.value.display_name
  location        = each.value.location
  name            = each.value.name
  parent          = each.value.parent
  visibility      = each.value.visibility
  deletion_policy = each.value.deletion_policy
  description     = each.value.description

  dynamic "logging_query" {
    for_each = each.value.logging_query != null ? [each.value.logging_query] : []
    content {
      filter              = logging_query.value.filter
      summary_field_end   = logging_query.value.summary_field_end
      summary_field_start = logging_query.value.summary_field_start
      dynamic "summary_fields" {
        for_each = logging_query.value.summary_fields != null ? logging_query.value.summary_fields : []
        content {
          field = summary_fields.value.field
        }
      }
    }
  }

  dynamic "ops_analytics_query" {
    for_each = each.value.ops_analytics_query != null ? [each.value.ops_analytics_query] : []
    content {
      sql_query_text = ops_analytics_query.value.sql_query_text
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

