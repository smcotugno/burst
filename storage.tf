##################################################
#Create file storage
##################################################

resource "ibm_storage_file" "burstvs" {
  type = "Performance"
  datacenter = "${var.datacenter}"
  capacity = "20"
  iops = "100"
}
