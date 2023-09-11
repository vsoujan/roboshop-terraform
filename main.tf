module "components" {
  for_each          = var.components

  source            = "git::https://github.com/vsoujan/terraform-module.git"
  security_groups   = var.security_groups
  zone_id           = var.zone_id
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
  ami               = var.ami
}