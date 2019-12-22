variable "name" {
  type        = string
  description = "Name to be used on all resources as prefix"
}

variable "region" {
  type        = string
  description = "AWS Region where to deploy resources to."
}

variable "ami" {
  type        = string
  description = "The EC2 image ID to launch."
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "The type of instance to start. e.g. 't2.micro'"
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of VPC Subnet IDs to launch in."
}

variable "instance_count" {
  type        = number
  description = "Number of instances to launch"
  default     = 1
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource"
  default     = {}
}

variable "security_group_ids" {
  type        = list(string)
  description = "A list of security group IDs to associate with"
  default     = null
}

variable "cpu_credits" {
  type        = string
  description = "The credit option for CPU usage (unlimited or standard)"
  default     = "standart"
}

variable "ssh_authorized_key" {
  type        = string
  description = "Add keys to user's authorized keys file."
}

variable "expiredate" {
  type        = string
  description = "In hours when access should expire."
  default     = "100h"
}

variable "nginx_version" {
  type        = string
  description = "Version of NGINX to deploy."
  default     = "1.17.6"
}

variable "docker_compose_version" {
  type        = string
  description = "Version of docker-compose to install."
  default     = "1.25.0"
}

variable "user_name" {
  type        = string
  description = "User name with home dictory."
  default     = "clouduser"
}

variable "sql_server_fqdn" {
  type        = string
  description = "Sql server fqdn."
}

variable "sql_server_port" {
  type        = number
  description = "User name with home dictory."
  default     = 1433
}