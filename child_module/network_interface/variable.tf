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