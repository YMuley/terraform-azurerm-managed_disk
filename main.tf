# --------- ManagedDisk ------------
resource "azurerm_managed_disk" "managed_disk" {
    for_each = local.managed_disk
    name                 = each.value.name
    location             = each.value.location == null ? var.default_values.location : each.value.location
    resource_group_name  = var.resource_group_output[each.value.resource_group_name].name
    storage_account_type = each.value.storage_account_type//"Standard_LRS"
    create_option        = each.value.create_option//"Empty"
    disk_size_gb         = each.value.disk_size_gb//10
    tags                = each.value.tags == null ? var.default_values.tags : each.value.tags
}