terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">=8.13.0"
    }
  }
  required_version = ">= 1.0.0"
}
