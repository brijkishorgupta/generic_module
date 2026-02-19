variable "databases" {
  
  type = map(object({
    db-name            = string
    db-server-name     = string
    resource_group_name = string
  }))
}