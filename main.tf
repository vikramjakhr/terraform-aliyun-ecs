########################################
#                  ECS                 #
########################################

resource "alicloud_instance" "instance" {
  instance_name = "${var.instance_name}"
  instance_type = "${var.instance_type}"
  vswitch_id    = "${var.vswitch_id}"
  image_id      = "${var.image_id}"

  system_disk_category = "${var.system_disk_category}"
  system_disk_size     = "${var.system_disk_size}"

  host_name = "${var.host_name}"

  security_groups = ["${var.security_groups}"]
  key_name        = "${var.key_name}"
  role_name       = "${var.role_name}"

  user_data = "${var.user_data}"

  tags = "${merge(
        "${var.tags}",
        map(
            "Name" ,  "${var.instance_name}"
        )
    )}"

  volume_tags = "${merge(
        "${var.tags}",
        map(
            "Name" ,  "${var.instance_name}"
        )
    )}"
}
