variable "vm" {
  type = map(object({
    vm-name             = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    admin_password      = string
      nic-name             = string

  }))
}

