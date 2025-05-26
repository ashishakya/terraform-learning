output "user_output" {
  value = var.users[0]
}

output "group_output" {
  value = "${upper(var.group)}"
}

output "user_location_output" {
  value = "Role: ${var.role_name}. Id: ${lookup(var.user_location, var.role_name)}"
}