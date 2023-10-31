

#resource "azurerm_storage_account" "trainingsa" {
#  name                     = "training-sa-${var.prefix}"
#  location                 = azurerm_resource_group.demo.location
#  resource_group_name      = azurerm_resource_group.demo.name
#  account_tier             = "Standard"
#  account_replication_type = "LRS"
#}
#
#resource "azurerm_storage_container" "trainingco" {
#  name                  = "training-co-${var.prefix}"
#  storage_account_name  = azurerm_storage_account.trainingsa.name
#  container_access_type = "private"
#}
#
#resource "azurerm_storage_blob" "training-file" {
#  name                   = "traningfile.txt"
#  storage_account_name   = azurerm_storage_account.trainingsa.name
#  storage_container_name = azurerm_storage_container.trainingco.name
#  type                   = "Block"
#  source                 = "traningfile.txt"
#}


#data "azurerm_subscription" "primary" {}
#
#resource "azurerm_role_definition" "blobrw" {
#  name               = "access-to-azure-blob"
#  scope              = data.azurerm_subscription.primary.id
#
# permissions {
#    actions     = [
#        "Microsoft.Storage/storageAccounts/blobServices/containers/read",
#    ]
#    data_actions = [
#      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read",
#      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/write",
#    ]
#    not_actions = []
#    not_data_actions = [
#      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/delete",
#    ]
#  }
#
#  assignable_scopes = [
#    "${data.azurerm_subscription.primary.id}",
#  ]
#}
#
#resource "azurerm_role_assignment" "blobrw_assignment" {
#  scope              = data.azurerm_subscription.primary.id
#  role_definition_id = azurerm_role_definition.blobrw.id
#  principal_id       = azurerm_virtual_machine.demo-instance.identity.0.principal_id
#}
