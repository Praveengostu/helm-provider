#cluster config file path
output "cluster_config_file_path" {
  value = "${data.ibm_container_cluster_config.cluster_foo.config_file_path}"
}
