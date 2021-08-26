terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "1.0.0"
    }
  }
}

# Configure the MongoDB Atlas provider
provider "mongodbatlas" {
}

resource "mongodbatlas_cluster" "cluster" {
  project_id = var.project_id
  name = var.cluster_name
  mongo_db_major_version = var.mongodb_version

  cluster_type = var.cluster_type
  replication_specs {
    num_shards = var.num_shards
    regions_config {
      region_name = var.region
      electable_nodes = var.electable_nodes
      priority = var.priority
      read_only_nodes = var.read_only_nodes
    }
  }
  provider_backup_enabled = var.provider_backup_enabled
  auto_scaling_disk_gb_enabled = var.auto_scaling_disk_gb_enabled
  auto_scaling_compute_enabled = var.auto_scaling_compute_enabled

  provider_instance_size_name = var.provider_instance_size_name
  provider_name = var.provider_name
}