resource "aws_vpc" "aws-vpc" {
  cidr_block = var.vpc_cidr[count.index]
  instance_tenancy = var.instance_tenancy
  enable_dns_support = var.dns_support
  enable_dns_hostnames = var.dns_hostnames
  enable_classiclink = var.vpc_clink
  enable_classiclink_dns_support = var.vpc_clink_dns
  assign_generated_ipv6_cidr_block = var.vpc_ipv6_cidr
  count = length(var.vpc_cidr)
  tags = {
    Name = join("-", [var.vpc_name, var.aws_region, "vpc", count.index])
  }
}
