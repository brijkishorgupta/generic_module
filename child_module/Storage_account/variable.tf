variable "stg" {
  type = map(object({
    stg-name                 = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))

}
