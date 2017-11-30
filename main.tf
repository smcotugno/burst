
#############################################################################
#This configuration will deploy a number (define din count variable) of virtual guests to a data 
#center along with a single file storage. Each virtual guest will be connected to a common VLAN 
#and mounte a common file storage that is also deployed. Each server will have an assigned host 
#name using a naming convention, a common public ssh key and receive a cloud allocated IP address. 
#particular variables for the servers are noted below.

#############################################################################


########################################################
#Create SSH key for VSIs
########################################################

resource "ibm_compute_ssh_key" "ssh_key" {
  label = "${var.ssh_label}"
  notes = "${var.ssh_notes}"
  public_key = "${var.ssh_key}"
}

########################################################
#Create multiple VMs
########################################################

resource "ibm_compute_vm_instance" "burstvs" {
  count = "${var.vm_count}"
  os_reference_code = "${var.osrefcode}"
  hostname = "${format("burstvs-%02d", count.index + 1)}"
  domain = "${var.domain}"
  datacenter = "${var.datacenter}"
  file_storage_ids = ["${ibm_storage_file.burstvs.id}"]
  network_speed = 10
  cores = 1
  memory = 1024
  disks = [25, 10]
  ssh_key_ids = ["${ibm_compute_ssh_key.ssh_key.id}"]
  local_disk = false
  private_security_group_ids = "${module.security.sg1_id}"
  private_vlan_id = "${var.privatevlanid}"
  dedicated_acct_host_only = "${var.single_tenant}"
}
