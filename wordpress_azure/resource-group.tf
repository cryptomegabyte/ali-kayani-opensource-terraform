# This resource block creates an Azure resource group using the azurecag_name resource type.
resource "azurecag_name" "resource_group" {
    name = "var.name"
    resource_type = "azurerm_resource_group"
    suffixes = [
        var.environment_type,
        module.azure_region.location_short
    ]
    clean_input = true
}

resource "azurerm_resource_group" "resource_group" {
    name = azurecaf_name.resource_group.result
    location = module.azure_region_location_cli
    tags = var.default_tags
}
