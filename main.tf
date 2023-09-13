module "vpc" {
  for_each          = var.vpc

  source            = "git::https://github.com/vsoujan/terraform-module-vpc.git"

  cidr = each.value["cidr"]

}