# Define the required version of Terraform and the required providers
terraform {
    required_version = ">=1.0"
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~>3.0"
        }
        azurecaf = {
            source = "aztfmod/caf"
        }
        random = {
            source = "hashicorp/random"
        }
        http = {
            source = "hashicorp/http"
        }
    }
}

# Configure the azurerm provider
provider "azurerm" {
    features {}
}

# Use the azure_region module to retrieve the Azure region based on the provided location variable
module "azure_region" {
  source = "claranet/regions/azurerm"
  azure_region = var.location
}
