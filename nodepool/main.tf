# ########
# Provider
# ########

# Configure the DigitalOcean Provider
provider "digitalocean" {}

# #########
# terraform
# #########

# rest of the backend part will be filled by terragrunt
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  backend "s3" {}
}

########
# LOCALS
########


######
# DATA
######


###########
# RESOURCES
###########

resource "digitalocean_kubernetes_node_pool" "this" {
  cluster_id = var.cluster_id
  name       = var.name
  size       = var.size
  node_count = var.node_count
  auto_scale = var.auto_scale
  min_nodes = var.min_nodes
  max_nodes = var.max_nodes
  tags = var.tags
  labels = var.labels

  taint {
    key    = var.taint_key
    value  = var.taint_value
    effect = var.taint_effect
  }
}
