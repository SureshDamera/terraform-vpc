// tags
variable "tags" {
  type        = map(string)
  description = "tags add to all resources created with this module"
  default = {
    Terraform = "true"
    Module    = "ecs-fargate"
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
  default     = "ap-southeast-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  default     = "172.32.200.0/24"
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = ["172.32.200.96/27", "172.32.200.128/27", "172.32.200.160/27"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = ["subnet-0be642dbf321f8d1a", "subnet-0b047ea0ce0a2a359", "subnet-024a818f420dd330d"]
}


#-- var.tf -------------------------------------------------------------------

variable "provider_env_roles" {
  type = map(string)
  default = {
    "default"  = ""
  }
}
