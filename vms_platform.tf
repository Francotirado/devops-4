###cloud vars

variable "vm_db_default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_vpc_name" {
  type        = string
  default     = "develop-db"
  description = "VPC network & subnet name"
}

variable "vm_db_image" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vms_platform_id" {
  type = string
  default = "standard-v3"
}

#variable "vm_db_cores" {
#  type = number
#  default = 2
#}

#variable "vm_db_memory" {
#  type = number
#  default = 2
#}

#variable "vm_db_core_fraction" {
#  type = number
#  default = 20
#}
