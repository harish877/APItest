resource "azurerm_resource_group" "Test" {
  name     = "Test-resources"
  location = "East US"
}

resource "azurerm_api_management" "APISample" {
  name                = "example-apim"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  publisher_name      = "My Company"
  publisher_email     = "company@terraform.io"

  sku_name = "Developer_1"
}
