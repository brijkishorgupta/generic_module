variable "rgs" {
  type = map(object({
    rg-name     = string
    location = string
  }))

}
