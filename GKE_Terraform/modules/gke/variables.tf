variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "network_id" {
  description = "ID of the VPC network"
  type        = string
}

variable "subnet_id" {
  description = "ID of the VPC subnet"
  type        = string
}

variable "machine_type" {
  description = "Machine type for nodes"
  type        = string
}

variable "initial_node_count" {
  description = "Initial number of nodes"
  type        = number
}

variable "min_node_count" {
  description = "Minimum number of nodes for autoscaling"
  type        = number
}

variable "max_node_count" {
  description = "Maximum number of nodes for autoscaling"
  type        = number
}

variable "preemptible" {
  description = "Use preemptible VMs"
  type        = bool
}
