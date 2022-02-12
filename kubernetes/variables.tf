variable "auto_upgrade" {
  description = " (Optional) A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window."
  type = bool
  default = false
}

variable "description" {
  description = "(Optional) A free-form text field up to a limit of 255 characters to describe the VPC."
  type = string
  default = ""
}

variable "ip_range" {
  description = "(Optional) The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24."
  type = string
  default = ""
}

variable "k8s_version" {
  description = "(Required) The slug identifier for the version of Kubernetes used for the cluster. Use doctl to find the available versions doctl kubernetes options versions. (Note: A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)"
  type = string
}

variable "ha" {
  description = "(Optional) Enable/disable the high availability control plane for a cluster. High availability can only be set when creating a cluster. Any update will create a new cluster. Default: false"
  type = bool
  default = false
}

variable "name" {
  description = "(Required) A name for the Kubernetes cluster."
  type = string
}

variable "surge_upgrade" {
  description = " (Optional) A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window."
  type = string
  default = false
}

variable "region" {
  description = "(Required) The slug identifier for the region where the Kubernetes cluster will be created."
  type = string
}

variable "vpc_uuid" {
  description = "(Optional) The ID of the VPC where the Kubernetes cluster will be located."
}

variable "default_pool_name" {
  description = "(Required) A name for the node pool."
  type = string
  default = "worker0"
}

variable "default_pool_size" {
  description = "(Required) The slug identifier for the type of Droplet to be used as workers in the node pool."
  type = string
}

variable "default_pool_node_count" {
  description = "(Optional) The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value."
  type = string
  default = "1"
}

variable "default_pool_auto_scale" {
  description = "(Optional) Enable auto-scaling of the number of nodes in the node pool within the given min/max range."
  type = bool
  default = true
}

variable "default_pool_min_nodes" {
  description = "(Optional) If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to."
  type = string
  default = "3"
}

variable "default_pool_max_nodes" {
  description = "(Optional) If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to."
  type = string
  default = "6"
}

variable "default_pool_tags" {
  description = "(Optional) A list of tag names to be applied to the Kubernetes cluster."
  type = list(string)
  default = []
}

variable "maintenance_policy_day" {
  description = "(Required) The day of the maintenance window policy. May be one of monday through sunday, or any to indicate an arbitrary week day."
  type = string
  default = "monday"
}

variable "maintenance_policy_start_time" {
  description = "(Required) The start time in UTC of the maintenance window policy in 24-hour clock format / HH:MM notation (e.g., 15:00)."
  type = string
  default = "03:30"
}

variable "tags" {
  description = "(Optional) A list of tag names to be applied to the Kubernetes cluster."
  type = list(string)
  default = []
}
