# Mongo Project
variable "project_id" {
  type = string
  description = "(Required) MongoDB Atlas project id"
}

# MongoDB Atlas Cluster
variable "cluster_name" {
    type = string
    description = "(Required) MongoDB Atlas cluster name"
}

variable "mongodb_version" {
  type = string
  description = "(Optional) MongoDB version. Default: 4.6"
  default = "4.6"
}

variable "cluster_type" {
  type = string
  description = "(Optional) MongoDB Atlas cluster type. Default: REPLICASET"
  default = "REPLICASET"
}

variable "region" {
  type = string
  description = "(Optional) MongoDB Atlas region. Default: westeurope"
  default = "westeurope"
}

variable "num_shards" {
  type = int
  description = "(Optional) Number of shards. Default: 1"
  default = 1
}

variable "electable_nodes" {
  type = int
  description = "(Optional) Number of electable nodes. Default: 3"
  default = 3
}

variable "priority" {
  type = int
  description = "(Optional) Priority. Default: 7"
  default = 7
}

variable "read_only_nodes" {
  type = int
  description = "(Optional) Number of read only nodes. Default: 0"
  default = 0
}

variable "provider_backup_enabled" {
  type = bool
  description = "(Optional) Enable backup. Default: false"
  default = false
}

variable "auto_scaling_compute_enabled" {
  type = bool
  description = "(Optional) Enable auto scaling computing size. Default: false"
  default = false
}

variable "auto_scaling_disk_gb_enabled" {
  type = bool
  description = "(Optional) Enable auto scaling disk size. Default: false"
  default = false
}

variable "provider_name" {
  type = string
  description = "(Optional) Provider name. Default: azure"
  default = "azure"
}

variable "provider_instance_size_name" {
  type = string
  description = "(Required) Provider instance size name. Default: M10"
  default = "M10"
}