variable "cidr_block" {
    description = "CIDR address block for VPC"
    type = string
}


variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}