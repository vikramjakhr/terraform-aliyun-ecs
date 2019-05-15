// ECS

variable "instance_name" {
  description = "Name of the instance"
}

variable "host_name" {
  description = "Hostname for the instance"
}

variable "instance_type" {
  default     = "ecs.t5-lc1m2.large"
  description = "Instance type"
}

variable "vswitch_id" {
  description = "VSwitch ID for the instance"
}

variable "system_disk_category" {
  default     = "cloud_efficiency"
  description = "Instance disk type"
}

variable "system_disk_size" {
  default     = 20
  description = "Instance disk size"
}

variable "image_id" {
  default     = "ubuntu_16_0402_64_20G_alibase_20170818.vhd"
  description = "OS image for the instance"
}

variable "security_groups" {
  type        = "list"
  description = "Security group to be attached to the instance"
}

variable "key_name" {
  description = "key pair that needed for ssh"
}

variable "role_name" {
  default     = ""
  description = "Instance RAM role"
}

variable "user_data" {
  default     = ""
  description = "User data in any"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Tags for the instance"
}
