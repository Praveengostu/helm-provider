

provider "helm" {
  kubernetes {
    config_path = "${data.ibm_container_cluster_config.cluster_foo.config_file_path}"
  }
}

data "ibm_container_cluster_config" "cluster_foo" {
  cluster_name_id = "${var.cluster_name_id}"
}

resource "helm_chart" "myredis" {
   name      = "my_redis"
   chart     = "stable/redis"
}
