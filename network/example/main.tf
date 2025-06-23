provider "aws" {
  region = local.region
}
locals {
  #   name   = "ex-${basename(path.cwd)}"
  region = var.region
}

module "vpc" {
  source = "../"

  ################################################################################
  # VPC
  ################################################################################

  create_vpc               = var.create_vpc
  vpc_cidr                 = var.vpc_cidr
  vpc_tags                 = var.vpc_tags
  vpc_enable_dns_support   = var.vpc_enable_dns_support
  vpc_enable_dns_hostnames = var.vpc_enable_dns_hostnames

  ################################################################################
  # VPC Peering
  ################################################################################

  existing_vpc_id   = var.existing_vpc_id
  existing_rtb      = var.existing_rtb
  existing_vpc_cidr = var.existing_vpc_cidr
  vpc_peering_tags  = var.vpc_peering_tags
  create_vpc_peering = var.create_vpc_peering

  ################################################################################
  # Publiс Subnets
  ################################################################################

  public_subnets_cidr            = var.public_subnets_cidr
  public_subnets_azs             = var.public_subnets_azs
  enable_map_public_ip_on_launch = var.enable_map_public_ip_on_launch
  public_subnets_tags            = var.public_subnets_tags

  ################################################################################
  # IGW
  ################################################################################

  create_igw = var.create_igw
  igw_tags   = var.igw_tags

  ################################################################################
  # Public RTB
  ################################################################################

  public_route_table_tags = var.public_route_table_tags

  ################################################################################
  # Private Subnets
  ################################################################################

  private_subnets_cidr = var.private_subnets_cidr
  private_subnets_azs  = var.private_subnets_azs
  private_subnets_tags = var.private_subnets_tags

  ################################################################################
  # Elastic IP
  ################################################################################
  
  eip_tags = var.eip_tags
  
  ################################################################################
  # NAT Gateways
  ################################################################################

  create_nat_gateway = var.create_nat_gateway
  nat_tags           = var.nat_tags

}

