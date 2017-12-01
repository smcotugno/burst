
#######################################
#Define variables
#######################################


variable slusername {
  description = "sl user name"
  default = ""
}
variable slapikey {
  description = "sl api key"
  default = ""
}
variable ssh_label {
  description = "ssh label"
  default = "ssh label for public key"
}
variable ssh_key {
  description = "ssh public key"
  default = ""
}
variable ssh_notes {
  description = "ssh public key notes"
  default = "This is an ssh public key"
}
variable osrefcode {
  description = "operating system reference code for VMs"
  default = "DEBIAN_8_64"
}
variable datacenter {
  description = "location to deploy"
  default = "dal06"
}
variable domain {
  description = "domain of the VMs"
  default = "mybluemix.com"
}
variable vm_count {
  description = "number of VMs"
  default = "2"
}

variable privatevlanid {
  description = "private VLAN - network_count to true"
  default  = "123456"
  # default  = "${ibm_network_vlan.vlan_private.id}"
}

variable publicvlanid {
  description = "public VLAN"
  default = "123456"
}

variable network_count {
  description = "Setting to true will create a private vlan.  If set to false, you must provide the vlan id in privatevlanid"
  default = "true"
}
variable single_tenant {
  description = "Indicates type of tenancy: multi (false) single (true)"
  default = "false"
}

