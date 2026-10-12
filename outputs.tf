output "email_notification_integrations_id" {
  description = "Map of id values across all email_notification_integrations, keyed the same as var.email_notification_integrations except keys with no id are omitted"
  value       = { for k, v in snowflake_email_notification_integration.email_notification_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "email_notification_integrations_allowed_recipients" {
  description = "Map of allowed_recipients values across all email_notification_integrations, keyed the same as var.email_notification_integrations except keys with no allowed_recipients are omitted"
  value       = { for k, v in snowflake_email_notification_integration.email_notification_integrations : k => v.allowed_recipients if v.allowed_recipients != null && length(v.allowed_recipients) > 0 }
}
output "email_notification_integrations_comment" {
  description = "Map of comment values across all email_notification_integrations, keyed the same as var.email_notification_integrations except keys with no comment are omitted"
  value       = { for k, v in snowflake_email_notification_integration.email_notification_integrations : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "email_notification_integrations_enabled" {
  description = "Map of enabled values across all email_notification_integrations, keyed the same as var.email_notification_integrations except keys with no enabled are omitted"
  value       = { for k, v in snowflake_email_notification_integration.email_notification_integrations : k => v.enabled if v.enabled != null }
}
output "email_notification_integrations_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all email_notification_integrations, keyed the same as var.email_notification_integrations except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_email_notification_integration.email_notification_integrations : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "email_notification_integrations_name" {
  description = "Map of name values across all email_notification_integrations, keyed the same as var.email_notification_integrations except keys with no name are omitted"
  value       = { for k, v in snowflake_email_notification_integration.email_notification_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}

