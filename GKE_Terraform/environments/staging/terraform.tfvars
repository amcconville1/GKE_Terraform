project_id         = "your-staging-project-id"
region             = "us-central1"
network_name       = "staging-vpc"
subnet_name        = "staging-subnet"
subnet_cidr        = "10.0.0.0/16"
cluster_name       = "staging-cluster"
machine_type       = "e2-standard-4"
initial_node_count = 3
min_node_count     = 2
max_node_count     = 5
preemptible        = false
