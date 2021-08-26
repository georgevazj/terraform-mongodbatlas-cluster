output "connection_strings" {
  value = mongodbatlas_cluster.cluster.connection_strings.0.standard_srv
}