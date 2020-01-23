
variable "vpc_cidr" {
    description = "The CIDR block for the VPC."
    type = "list"
}

variable "instance_tenancy" {
    description = "A tenancy option for instances launched into the VPC."
    default = "default"
}

variable "dns_support" {
    description = "A boolean flag to enable/disable DNS support in the VPC."
    default = true
}

variable "dns_hostnames" {
    description = "A boolean flag to enable/disable DNS hostnames in the VPC."
    default = false
}

variable "vpc_clink" {
    description = "A boolean flag to enable/disable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic."
    default = false
}

variable "vpc_clink_dns" {
    description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic."
    default = false
}

variable "vpc_ipv6_cidr" {
    description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block."
    default = false
}

variable "vpc_count"{
    description = "The number of VPC to be created."
}

variable "vpc_name" {
    description = "The name of the VPC to be created."
}

variable "aws_region" {
  default = "us-east-1"
}
