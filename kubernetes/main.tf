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

resource "digitalocean_kubernetes_cluster" "this" {
  name    = var.name
  region  = var.region
  version = var.k8s_version
  vpc_uuid = var.vpc_uuid
  auto_upgrade = var.auto_upgrade
  surge_upgrade = var.surge_upgrade
  ha = var.ha

  node_pool {
    name = var.default_pool_name
    size = var.default_pool_size
    auto_scale = var.default_pool_auto_scale
    min_nodes = var.default_pool_min_nodes
    max_nodes = var.default_pool_max_nodes
    tags = var.default_pool_tags
  }
}
