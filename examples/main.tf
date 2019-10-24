module "mysql_username" {
  source      = "git::git@github.com:wizeline-sre/aws-parameter-store-terraform.git"
  description = "The username for the MySQL server"
  name        = "/dev/mysql_username"
  type        = "String"
  value       = "administrator"
}
module "mysql_password" {
  source      = "git::git@github.com:wizeline-sre/aws-parameter-store-terraform.git"
  name        = "/dev/mysql_password"
  generate    = true
  type        = "SecureString"
  description = "The password for the MySQL administrator"
  min_upper   = 2
  min_lower   = 2
  min_numeric = 2
  min_special = 2
}
