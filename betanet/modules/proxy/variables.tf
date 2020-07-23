  
variable instance_type {
  type        = string
  description = "AWS instance type for this node"
}

variable subnet_id {
  type        = string
  description = "Subnet ID to place this proxy. This should be a public subnet from your Celo VPC."
}

variable security_group_id {
  type        = string
  description = "VPC Security group for this instance"
}

variable key_pair_name {
  type        = string
  description = "Name of the SSH key pair to access this node from the bastion"
}

variable volume_size {
  type        = number
  description = "GB size for the EBS volume"
  default     = 256
}

variable near_image {
  type        = string
  description = "Name of the docker image to run"
}

variable near_network_id {
  type        = string
  description = "near network ID to join"
}



variable proxies {
  type = map(object({

  description = "Map of proxy configurations."
}