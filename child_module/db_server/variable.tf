variable "db_server" {
    type = map(object({
        db-server-name      = string
        resource_group_name = string
        location            = string
    }))
}