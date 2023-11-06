variable "managed_disk_list" {
    type = list(any)
    default = []
    description = "list of managed disk objects"  
}

variable "resource_group_output" {
    type = map(any)
    default = {}
    description = "outputs of resource group objects"  
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resource if not any"
}