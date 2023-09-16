module "vpc" {
  for_each          = var.vpc

  source            = "git::https://github.com/vsoujan/terraform-module-vpc.git"

  cidr              = each.value["cidr"]
  subnets           = each.value["subnets"]
  default_vpc_id    = var.default_vpc_id
  default_vpc_cidr  = var.default_vpc_cidr
  default_route_id  = var.default_route_id

}

output "vpc" {
  value = module.vpc
}

