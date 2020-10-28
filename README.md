# AWS Parameter Store Terraform

Terraform module which create an SSM Parameter Store on AWS.

## Usage

There are two ways to create an SSM Parameter Store using this module:

1. Passing a value
    ```
    module "mysql_username" {
      source      = "git::git@github.com:wizeline-sre/aws-parameter-store-terraform.git"
      description = "The username for the MySQL server"
      name        = "/dev/mysql_username"
      type        = "String"
      value       = "administrator"
    }

    ```
1. Generating a random string
    ```
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

    ```
    A new parameter will be generated with a string with at least 2 uppercase characters, 2 lowercase characters, 2 numbers and 2 special characters.

## License
This terraform module is distributed under the [MIT License ](https://opensource.org/licenses/MIT), see [LICENSE](./LICENSE) for more information.
