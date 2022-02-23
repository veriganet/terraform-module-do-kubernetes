variable "cluster_id" {
  description = "(Required) The ID of the Kubernetes cluster to which the node pool is associated."
  type = string
}


variable "description" {
  description = "(Optional) A free-form text field up to a limit of 255 characters to describe the VPC."
  type = string
  default = ""
}

variable "size" {
  description = "(Required) The slug identifier for the type of Droplet to be used as workers in the node pool."
  type = string
  default = "1"
}

variable "node_count" {
  description = "(Optional) The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value."
  type = string
  default = "1"
}

variable "auto_scale" {
  description = "(Optional) Enable auto-scaling of the number of nodes in the node pool within the given min/max range."
  type = bool
  default = false
}

variable "min_nodes" {
  description = "(Optional) If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to."
  type = string
  default = "1"
}

variable "max_nodes" {
  description = "(Optional) If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to."
  type = string
  default = "1"
}

variable "name" {
  description = "(Required) A name for the node pool."
  type = string
}

variable "region" {
  description = "(Required) The slug identifier for the region where the Kubernetes cluster will be created."
  type = string
  default = ""
}

variable "labels" {
  description = "(Optional) A map of key/value pairs to apply to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding Node resources."
  type = map(string)
  default = {}
}

variable "tags" {
  description = "(Optional) A list of tag names to be applied to the Kubernetes cluster."
  type = list(string)
  default = []
}

variable "taint_key" {
  description = "(Optional) A list of taints applied to all nodes in the pool."
  type = string
  default = ""
}

variable "taint_value" {
  description = "(Optional) A list of taints applied to all nodes in the pool."
  type = string
  default = ""
}

variable "taint_effect" {
  description = "(Optional) A list of taints applied to all nodes in the pool."
  type = string
  default = ""
}
