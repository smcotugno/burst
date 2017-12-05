#SECURITY.tf
#This file creates the security groups for private VSIs
#

#########################################################
# Create Security Group for VSIs
#########################################################

resource "ibm_security_group" "sg1" {
    name = "sg1"
    description = "to only allow SSH"
}

#########################################################
# Create Policies for security group
# 1. allow SSH in
# 2. allow tcp on 443 out for app communications
# 3. allow tcp on 50000 out for data communications
#########################################################

resource "ibm_security_group_rule" "allow_ssh" {
    direction = "ingress"
    ether_type = "IPv4"
    port_range_min = 22
    port_range_max = 22
    protocol = "tcp"
    security_group_id = "${ibm_security_group.sg1.id}"
}

output "sg1_id" {
  value = "${ibm_security_group.sg1.id}"
}

