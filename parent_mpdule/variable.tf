variable "rgs" {
  type = map(object({
    rg-name  = string
    location = string
  }))

}
variable "stg" {
  type = map(object({
    stg-name                 = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))

}
variable "vnet" {
  type = map(object({
    vnet-name           = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
    subnet = map(object({
      subnet-name      = string
      address_prefixes = list(string)
    }))
  }))

}
variable "pip" {
  type = map(object({
    pip-name            = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))
}

variable "nic" {
  type = map(object({
    nic-name             = string
    subnet-name          = string
    virtual_network_name = string
    resource_group_name  = string
    location             = string
    pip-name             = string
  }))

}
variable "vm" {
  type = map(object({
    vm-name             = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    admin_password      = string
    nic-name            = string

  }))
}
variable "db_server" {
  type = map(object({
    db-server-name      = string
    resource_group_name = string
    location            = string
  }))
}
variable "databases" {

  type = map(object({
    db-name             = string
    db-server-name      = string
    resource_group_name = string
  }))
}
# variable "bastion" {
#   type = map(object({
#     bastion-name         = string
#     location             = string
#     resource_group_name  = string
#     virtual_network_name = string
#     subnet-name          = string
#     pip-name             = string

#   }))

# }

variable "key_vault" {
  type = map(object({
    key_vault_name      = string
    location            = string
    resource_group_name = string

  }))
}
