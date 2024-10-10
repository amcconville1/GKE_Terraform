module "vpc" {
  source       = "../../modules/networking"
  network_name = var.network_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
}

module "gke" {
  source            = "../../modules/gke"
  cluster_name      = "prod-cluster"
  region            = var.region
  network_id        = module.vpc.network_id
  subnet_id         = module.vpc.subnet_id
  machine_type      = "e2-standard-4"
  initial_node_count = 3
  min_node_count     = 1
  max_node_count     = 5
  preemptible        = false
}

data "google_client_config" "default" {}
