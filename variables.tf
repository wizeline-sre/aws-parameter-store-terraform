#Variables for the AWS SSM Parameter Store
variable "name" {
  type        = string
  description = "The name of the SSM Parameter"
}

variable "create" {
  default     = true
  description = "Whether to create SSM Parameter Sore"
  type        = bool
}


variable "generate" {
  default     = false
  description = "Whether to create a random string as value"
  type        = bool
}

variable "value" {
  type    = string
  default = ""
}

variable "type" {
  default     = "String"
  description = "The Parameter type, it can be String, SecureString or StringList"
  type        = string
}

variable "tags" {
  default     = {}
  description = "A mapping of tags to assign to the SSM Parameter Store"
  type        = map(string)
}

variable "description" {
  default     = ""
  description = "A short description about the purpose of the SSM Parameter Store"
  type        = string
}

##Variables for the Randmon String
variable "length" {
  default     = 16
  description = "The lenght of the string"
  type        = number
}

variable "upper" {
  default     = true
  description = "Whether include uppercase characters in the string"
  type        = bool
}

variable "min_upper" {
  default     = 0
  description = "The minimum number of uppercase characters in the string"
  type        = number
}

variable "lower" {
  default     = true
  description = "Whether include lowercase characters in the string"
  type        = bool
}

variable "min_lower" {
  default     = 0
  description = "The minimum number of lowercase characters in the string"
  type        = number
}

variable "number" {
  default     = true
  description = "Wheter include numbers in the string"
  type        = bool
}

variable "min_numeric" {
  default     = 0
  description = "The minimum number of numbers in the string"
  type        = number
}

variable "special" {
  default     = true
  description = "Whether include special characters in the string"
  type        = bool
}

variable "min_special" {
  default     = 0
  description = "The minimum number of special characters in the string"
  type        = number
}

variable "override_special" {
  default     = "!@#$%&*()-_=+[]{}<>:?"
  description = "The special characters to use for string generation"
  type        = string
}

