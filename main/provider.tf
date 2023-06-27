terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

provider "azurerm" {
 # subscription_id = "a6267f6a-acf0-41cd-a374-1fbc3bad9059"
 # tenant_id = "78fde202-c716-4f1f-8719-a1b591634ccc"
 # client_id = "2e4fca8d-91aa-41d3-94b1-f0cf52743d69"
 # client_secret = "Ban8Q~z5SK5aUg95fVaK8532ybvbSLH1e_tJubaC"
  features {}
}