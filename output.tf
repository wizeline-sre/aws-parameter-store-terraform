output "default_ssm_paramter_name" {
  value = element(
    concat(
      aws_ssm_parameter.default.*.name,
      [""],
    ),
    0,
  )
}

output "default_ssm_parameter_type" {
  value = element(
    concat(
      aws_ssm_parameter.default.*.type,
      [""],
    ),
    0,
  )
}

output "default_ssm_paramater_value" {
  value = element(
    concat(
      aws_ssm_parameter.default.*.value,
      [""],
    ),
    0,
  )
  sensitive = true
}

