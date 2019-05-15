Aliyun ECS Terraform Module
=========

- Reference: https://www.terraform.io/docs/providers/alicloud/r/instance.html

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

The key features of this Module are:

- **ECS Instance**: Creates a new ECS instance.
  
Usage
-------------------------------

Use below snippet in tf file to create a new ECS instance.

```
module "bastion_host" {
  source = "./modules/ecs"

  instance_name    = "${var.bastion["instance_name"]}"
  host_name        = "${var.bastion["host_name"]}"
  key_name         = "${module.key_pair.key_name}"
  vswitch_id       = "${module.aliyun_vpc.misc_vswitch_az_a_id}"
  role_name        = "${module.ecs_rame_role.role_name}"
  system_disk_size = "${var.bastion["system_disk_size"]}"

  security_groups = [
    "${alicloud_security_group.bastion_security_group.id}",
  ]

  tags = "${merge(
        "${local.common_tags}",
        map(
            "Name" ,  "${var.bastion["instance_name"]}"
        )
    )}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| host_name | Hostname for the instance | string | - | yes |
| image_id | OS image for the instance | string | `ubuntu_16_0402_64_20G_alibase_20170818.vhd` | no |
| instance_name | Name of the instance | string | - | yes |
| instance_type | Instance type | string | `ecs.t5-lc1m1.small` | no |
| key_name | key pair that needed for ssh | string | - | yes |
| role_name | Instance RAM role | string | `` | no |
| security_groups | Security group to be attached to the instance | list | - | yes |
| system_disk_category | Instance disk type | string | `cloud_efficiency` | no |
| system_disk_size | Instance disk size | string | `20` | no |
| tags | Tags for the instance | map | `<map>` | no |
| user_data | User data in any | string | `` | no |
| vswitch_id | VSwitch ID for the instance | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| instacne_id | Instance id |
| instacne_name | Instance name |
| instacne_private_ip | Instance private IP |
| instacne_status | Instance current status |

