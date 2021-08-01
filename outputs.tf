output "private_ip" {
  description = "The private IP address assigned to the instance."
  value       = oci_core_instance.a1.private_ip
}

output "public_ip" {
  description = "The public IP address assigned to the instance."
  value       = oci_core_instance.a1.public_ip
}
