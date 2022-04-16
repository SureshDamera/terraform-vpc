// tags
variable "tags" {
  type        = map(string)
  description = "tags add to all resources created with this module"
  default = {
    Variable1 = "Variable1Value"
    Variable2 = "Variable2Value"
    Variable3 = "Variable3Value"
  }
}

// app variables
variable "app_name" {
  type        = string
  description = "application name"
  default     = "test"
}

variable "AWS_REGION" {
  type        = string
  description = "region where to create resources"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  default     = "172.32.200.0/24"
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = ["172.32.200.64/27", "172.32.200.96/27"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = ["172.32.200.0/27", "172.32.200.32/27"]
}

variable "database_subnets" {
  description = "A list of database subnets inside the VPC"
  default     = ["172.32.200.128/27", "172.32.200.160/27"]
}

variable "elasticcache_subnets" {
  description = "A list of elasticcache subnets inside the VPC"
  default     = ["172.32.200.224/27", "172.32.200.192/27"]
}



variable "profile" {
  type        = string
  description = "profile"
  default     = "default"
}

#-- var.tf -------------------------------------------------------------------

variable "provider_env_roles" {
  type = map(string)
  default = {
    "default" = ""
  }
}
