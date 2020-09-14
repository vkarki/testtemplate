provider "azurerm" {
  tenant_id = "105b2061-b669-4b31-92ac-24d304d195dc"
  subscription_id = "b0199e68-059a-47f0-a685-74588c223168"
  client_id = "7994ac6f-9474-45fb-ad7c-f18cbcdac315"
  client_secret = "abSkXD_7rRzC5kGP3f7Le4Sng.RZ6XE3cm"
  version   = "=2.21.0"
  features {}
}

terraform {
  required_version = ">= 0.12.0"
}

variable "prefix" {
}

resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-resources"
  location = "australia east"
}