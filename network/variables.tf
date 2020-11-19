variable "vpc_id" {
    description = "ID of the VPC"
    type = string
}

variable "cidr_block" {
    description = "CIDR address block for security group"
    type = string
}

variable "availability_zone" {
    description = "Availability zone for security group"
    type = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}