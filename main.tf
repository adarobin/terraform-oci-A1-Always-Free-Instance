data "oci_core_images" "oracle_linux_8" {
  compartment_id           = var.compartment_id
  operating_system         = "Oracle Linux"
  operating_system_version = "8"
  shape                    = "VM.Standard.A1.Flex"
  sort_by                  = "TIMECREATED"
  sort_order               = "DESC"
}

resource "oci_core_instance" "a1" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = var.name
  shape               = "VM.Standard.A1.Flex"

  shape_config {
    ocpus         = var.ocpus
    memory_in_gbs = var.memory_in_gbs
  }

  create_vnic_details {
    hostname_label = var.name
    subnet_id      = var.subnet_id
  }

  source_details {
    source_type             = "image"
    source_id               = data.oci_core_images.oracle_linux_8.images[0].id
    boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
  }
}

