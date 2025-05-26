variable "users" {
  type = list
  default = ["max" ,"super"]
}

variable "group" {
  type = string
}

variable "user_location" {
  type = map
  default = {
    "admin" = 101,
    "super_admin" = 102,
    "tenant"=103
  }
}

variable "role_name" {
  type = string
}
