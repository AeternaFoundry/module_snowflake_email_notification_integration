variable "email_notification_integrations" {
  description = <<EOT
Map of email_notification_integrations, attributes below
Required:
    - enabled
    - name
Optional:
    - allowed_recipients
    - comment
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    enabled            = bool
    name               = string
    allowed_recipients = optional(set(string))
    comment            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

