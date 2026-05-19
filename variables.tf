variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "key_name" {
  description = "Existing AWS EC2 key pair name to be used for instances"
  type        = string
  default     = "terraform-new"
}
