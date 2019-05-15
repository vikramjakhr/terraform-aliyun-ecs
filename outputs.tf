// ECS

output "instacne_id" {
  value       = "${alicloud_instance.instance.id}"
  description = "Instance id"
}

output "instacne_name" {
  value       = "${alicloud_instance.instance.instance_name}"
  description = "Instance name"
}

output "instacne_status" {
  value       = "${alicloud_instance.instance.status}"
  description = "Instance current status"
}

output "instacne_private_ip" {
  value       = "${alicloud_instance.instance.private_ip}"
  description = "Instance private IP"
}
