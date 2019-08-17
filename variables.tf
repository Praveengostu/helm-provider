variable "bluemix_api_key" {}
variable "softlayer_username" {}
variable "softlayer_api_key" {}

variable "org" {}
variable "space" {}

# variable "region" {}
variable "datacenter" {}
variable "machine_type" {}
# variable "isolation" {}
variable "private_vlan_id" {}
variable "public_vlan_id" {}
# variable "subnet_id" {}

variable "cluster_name" {}

#variable "chart_name" {
#  description = "name of the helm chart to be installed, e.g. stable/redis"
#}

variable "workers" {
  type = "list",
  default = [
    [],
    [ {name = "worker-1"} ],
    [ {name = "worker-1"}, {name = "worker-2"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"}, {name = "worker-8"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"}, {name = "worker-8"}, {name = "worker-9"} ],
    [ {name = "worker-1"}, {name = "worker-2"}, {name = "worker-3"}, {name = "worker-4"}, {name = "worker-5"}, {name = "worker-6"}, {name = "worker-7"}, {name = "worker-8"}, {name = "worker-9"}, {name = "worker-10"} ]
  ]
}
variable "num_workers" { default = 1 }
