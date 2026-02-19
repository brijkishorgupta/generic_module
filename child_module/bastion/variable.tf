variable "bastion" {
    type = map(object({
    bastion-name = string
    location = string
    resource_group_name = string
    virtual_network_name = string
    subnet-name = string
    pip-name = string

    }))
  
}