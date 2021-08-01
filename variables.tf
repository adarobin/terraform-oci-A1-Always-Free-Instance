variable "ocpus" {
  type    = number
  default = 1

  validation {
    condition     = var.ocpus >= 1
    error_message = "The value of ocpus must be greater than or equal to 1."
  }

  validation {
    condition     = var.ocpus <= 4
    error_message = "The value of ocpus must be less than or equal to 4 to remain in the free tier."
  }
}

variable "memory_in_gbs" {
  default = 6

  validation {
    condition     = var.memory_in_gbs >= 6
    error_message = "The value of memory_in_gbs must be greater than or equal to 6."
  }

  validation {
    condition     = var.memory_in_gbs <= 24
    error_message = "The value of memory_in_gbs must be less than or equal to 24 to remain in the free tier."
  }
}

variable "boot_volume_size_in_gbs" {
  default = null

  validation {
    condition     = var.boot_volume_size_in_gbs == null ? true : var.boot_volume_size_in_gbs >= 50
    error_message = "The value of boot_volume_size_in_gbs must be greater than or equal to 50."
  }

  validation {
    condition     = var.boot_volume_size_in_gbs == null ? true : var.boot_volume_size_in_gbs <= 200
    error_message = "The value of boot_volume_size_in_gbs must be less than or equal to 200 to remain in the free tier."
  }
}

variable "name" {
  type = string
}

variable "compartment_id" {
  type = string
}

variable "availability_domain" {
  type = string
}

variable "operating_system" {
  type = string

  validation {
    condition     = contains(["Canonical Ubuntu", "Oracle Linux", "Oracle Linux Cloud Developer"], var.operating_system)
    error_message = "The value of operating_system must be one of \"Canonical Ubuntu\", \"Oracle Linux\", or \"Oracle Linux Cloud Developer\"."
  }
}

variable "operating_system_version" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "ssh_authorized_keys" {
  type = string
}

variable "user_data" {
  type    = string
  default = null
}
