resource "snowflake_email_notification_integration" "email_notification_integrations" {
  for_each = var.email_notification_integrations

  enabled            = each.value.enabled
  name               = each.value.name
  allowed_recipients = each.value.allowed_recipients
  comment            = each.value.comment

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

