resource "ibm_container_cluster" "kubecluster" {
  count           = "1"
  name            = "${var.cluster_name}"
  datacenter      = "${var.datacenter}"
  org_guid        = "${data.ibm_org.org.id}"
  space_guid      = "${data.ibm_space.space.id}"
  account_guid    = "${data.ibm_account.account.id}"
  machine_type    = "${var.machine_type}"
  public_vlan_id  = "${var.public_vlan_id}"
  private_vlan_id = "${var.private_vlan_id}"
  no_subnet       = true
  workers         = "${var.workers[var.num_workers]}"
}

data "ibm_container_cluster_config" "cluster_config" {
  count           = 1
  cluster_name_id = "${ibm_container_cluster.kubecluster.name}"
  org_guid        = "${data.ibm_org.org.id}"
  space_guid      = "${data.ibm_space.space.id}"
  account_guid    = "${data.ibm_account.account.id}"
  config_dir      = "/tmp"
}

provider "helm" {
  kubernetes {
    config_path = "${data.ibm_container_cluster_config.cluster_config.config_file_path}"
  }
}

resource "helm_chart" "myredis" {
   depends_on = ["ibm_container_cluster.kubecluster"]
   name      = "my_redis"
   chart     = "stable/redis"
}
