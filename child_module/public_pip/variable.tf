variable "pip" {
  type = map(object({
    pip-name            = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))
}
