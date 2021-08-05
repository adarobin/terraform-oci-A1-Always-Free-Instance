# Oracle Cloud Always Free Ampere A1 Compute instance

Terraform module which creates an Always Free Ampere A1 Compute instance in Oracle Cloud.

This module attempts to limit inputs to valid values for the Always Free instance.

Use of this module does not guarantee usage falls within the Always Free tier. For example,
other instances could be using some of the Always Free allocation.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >=4.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | >=4.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.a1](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_images.os](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_images) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_public_ip"></a> [assign\_public\_ip](#input\_assign\_public\_ip) | Whether or not a public IP should be assigned to the instance.  Defaults to `null` which assigns a public IP based on whether the subnet is public or private. The Free Tier only includes 2 public IP addresses so you may need to set this to `false`. | `bool` | `null` | no |
| <a name="input_availability_domain"></a> [availability\_domain](#input\_availability\_domain) | The availability domain of the instance. | `string` | n/a | yes |
| <a name="input_boot_volume_size_in_gbs"></a> [boot\_volume\_size\_in\_gbs](#input\_boot\_volume\_size\_in\_gbs) | A custom size for the boot volume. Must be between 50 and 200. If not set, defaults to the size of the image which is around 46 GB. | `any` | `null` | no |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment containing the instance. | `string` | n/a | yes |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname of the instance. | `string` | n/a | yes |
| <a name="input_memory_in_gbs"></a> [memory\_in\_gbs](#input\_memory\_in\_gbs) | The amount of memory in GB to assign to the instance. Must be between 1 and 24. | `number` | `6` | no |
| <a name="input_ocpus"></a> [ocpus](#input\_ocpus) | The number of OCPUs to assign to the instance. Must be between 1 and 4. | `number` | `1` | no |
| <a name="input_operating_system"></a> [operating\_system](#input\_operating\_system) | The Operating System of the platform image to use. Valid values are "Canonical Ubuntu", "CentOS", "Oracle Autonomous Linux", "Oracle Linux", or "Oracle Linux Cloud Developer" | `string` | n/a | yes |
| <a name="input_operating_system_version"></a> [operating\_system\_version](#input\_operating\_system\_version) | The version of the Operating System specified in `operating_system`. | `string` | n/a | yes |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | The public SSH key(s) that should be authorized for the default user. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The OCID of the subnet to create the VNIC in. | `string` | n/a | yes |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | User data passed to cloud-init when the instance is started. Defaults to `null`. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The OCID of the instance that was created |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | The private IP address assigned to the instance. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public IP address assigned to the instance. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
