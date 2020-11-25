variable "subnet_id" {
  description = "ID of the subnet to deploy EC2 Instance"
  type        = string
}

variable "instance_size" {
  description = "Size of the EC instance"
  type        = string
  default     = "t3.nano"
}

variable "num_nodes" {
  description = "Number of EC2 instances to create"
  type        = string
}

variable "vpc_sg" {
  description = "Security Group ID"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "name" {
    description = "Name of the servers"
    type = string
}
