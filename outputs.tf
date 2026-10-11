output "ses_email_identities_id" {
  description = "Map of id values across all ses_email_identities, keyed the same as var.ses_email_identities"
  value       = { for k, v in aws_ses_email_identity.ses_email_identities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_email_identities_arn" {
  description = "Map of arn values across all ses_email_identities, keyed the same as var.ses_email_identities"
  value       = { for k, v in aws_ses_email_identity.ses_email_identities : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ses_email_identities_email" {
  description = "Map of email values across all ses_email_identities, keyed the same as var.ses_email_identities"
  value       = { for k, v in aws_ses_email_identity.ses_email_identities : k => v.email if v.email != null && length(v.email) > 0 }
}
output "ses_email_identities_region" {
  description = "Map of region values across all ses_email_identities, keyed the same as var.ses_email_identities"
  value       = { for k, v in aws_ses_email_identity.ses_email_identities : k => v.region if v.region != null && length(v.region) > 0 }
}

