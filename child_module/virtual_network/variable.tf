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
