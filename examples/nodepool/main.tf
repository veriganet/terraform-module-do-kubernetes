terraform {
  backend "local" {}
}

module "pool0" {
  source = "../../nodepool"

  cluster_id = "17fe4dc0-40c0-4d41-bb43-1727c0220a1d"
  name = "test-pool0"
  node_count = "1"
  auto_scale = false
  size = "s-8vcpu-16gb"

  labels = {
    "droneci_role" = "droneciexec"
  }

  taint_key = "droneciexec"
  taint_value = "true"
  taint_effect = "NoSchedule"

  tags = ["droneci", "droneciexec"]
}
