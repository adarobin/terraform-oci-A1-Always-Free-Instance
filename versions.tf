terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">=4.37.0"
    }
  }
  required_version = ">= 1.0.0"
}
