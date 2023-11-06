locals {
  managed_disk = {for managed_disk in var.managed_disk_list : managed_disk.name => managed_disk}
}