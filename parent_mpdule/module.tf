module "Resource_group" {

  source = "../child_module/Resource_group"
  rgs    = var.rgs
}