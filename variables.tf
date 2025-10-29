###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_image" {
  type = string
  default = "ubuntu-2004-lts"
}

#variable "vm_web_cores" {
#  type = number
#  default = 2
#}

#variable "vm_web_memory" {
#  type = number 
#  default = 1
#}

#variable "vm_web_core_fraction" {
#  type = number
#  default = 20
#}

variable "vms_resources" {
  type = map(object({
    cores = number
    memory = number
    core_fraction = number
  }))
  default = {
    web = {
      cores = 2
      memory = 1
      core_fraction = 20
    },
    db = {
      cores = 2
      memory = 2
      core_fraction = 20
    }
  }
}

variable "vms_meta" {
  type = map(object({
    serial-port-enable = number
    ssh-keys = string
  }))  
  default = {
    data = {
    serial-port-enable = 1
      ssh-keys = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF2Tcn3s8D1RoPl/2aRs9VNvL03KVw26pXhRM2b+3DXx per@192.168.1.3"
    }
  }
}

###ssh vars

#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF2Tcn3s8D1RoPl/2aRs9VNvL03KVw26pXhRM2b+3DXx per@192.168.1.3"
#  description = "ssh-keygen -t ed25519"
#}
