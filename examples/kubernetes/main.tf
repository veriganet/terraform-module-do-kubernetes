terraform {
  backend "local" {}
}

module "test0" {
  source = "../../kubernetes"

  name                          = "test0"
  default_pool_auto_scale       = true
  default_pool_min_nodes        = "3"
  default_pool_max_nodes        = "6"
  default_pool_size             = "s-4vcpu-8gb"
  k8s_version                   = "1.21.9-do.0"
  region                        = "lon1"
  vpc_uuid                      = "c5a3dc58-95a8-42d2-ab96-9068435fee07"
}
