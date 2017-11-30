resource "ibm_network_vlan" "vlan_private" {
   count = "${var.network_count}"
   name = "3tier_private"
   datacenter = "${var.datacenter}"
   type = "PUBLIC"
   subnet_size = 8
   router_hostname = "${var.private_router}"
}
