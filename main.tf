resource "aws_ssm_parameter" "default" {
  count       = var.create ? 1 : 0
  name        = var.name
  description = var.description
  type        = var.type
  value       = var.generate ? element(concat(random_string.default.*.result, [""]), 0) : var.value
  tags        = var.tags
}

resource "random_string" "default" {
  count            = var.create && var.generate ? 1 : 0
  length           = var.length
  upper            = var.upper
  min_upper        = var.min_upper
  lower            = var.lower
  min_lower        = var.min_lower
  number           = var.number
  min_numeric      = var.min_numeric
  special          = var.special
  min_special      = var.min_special
  override_special = var.override_special
}

