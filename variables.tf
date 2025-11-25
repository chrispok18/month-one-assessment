# AWS region
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

# Your public IP for Bastion access
variable "my_ip" {
  description = "Your public IP with /32"
  type        = string
}

# EC2 key pair name
variable "key_pair_name" {
  description = "Name of the AWS EC2 key pair"
  type        = string
}

# Instance types
variable "bastion_instance_type" {
  description = "EC2 instance type for Bastion"
  type        = string
}

variable "web_instance_type" {
  description = "EC2 instance type for Web servers"
  type        = string
}

variable "db_instance_type" {
  description = "EC2 instance type for DB server"
  type        = string
}
