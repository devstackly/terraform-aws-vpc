variable "region" {
  type    = string
  default = "us-east-2"
}
/*--------------- create variables ---------------*/

variable "create_vpc" {
  type    = bool
  default = true
}
variable "create_igw" {
  type    = bool
  default = true
}

variable "create_vpc_peering" {
  type    = bool
  default = true
}

variable "create_nat_gateway" {
  type    = bool
  default = false
}

/*---------------vpc variables---------------*/

variable "vpc_cidr" {
  type    = string
  default = "20.0.0.0/24"
}

variable "vpc_enable_dns_support" {
  type    = bool
  default = true
}

variable "vpc_enable_dns_hostnames" {
  type    = bool
  default = false
}

variable "vpc_tags" {
  type = map(string)
  default = {
    Name       = "dev-vpc"
    Enviroment = "dev"
    Owner      = "harshit"
  }
}

/*---------------- VPC Peering ------------*/

variable "existing_vpc_id" {
  type    = string
  default = "vpc-0c927c113819d1a70"
}

variable "existing_vpc_cidr" {
  type    = string
  default = "172.31.0.0/16"
}

variable "existing_rtb" {
  type    = string
  default = "rtb-0df49fc5d7599f2af"
}
variable "vpc_peering_tags" {
  type = map(string)
  default = {
    Name       = "dev-vpc-peering"
    Enviroment = "dev"
    Owner      = "harshit"
  }
}

/*--------------- Public Subnets ---------------*/

variable "public_subnets_cidr" {
  description = "public subnet cidr block"
  type        = list(string)
  default     = ["20.0.0.32/27", "20.0.0.64/27"]

}

variable "public_subnets_azs" {
  description = "public subnet availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}
variable "enable_map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "public_subnets_tags" {
  description = "public subnet tags"
  type        = list(map(string))
  default = [{
    Name       = "dev-public-subnet-01"
    Enviroment = "dev"
    Owner      = "harshit"
    }, {
    Name       = "dev-public-subnet-02"
    Enviroment = "dev"
    Owner      = "harshit"
  }]
}

/*--------------- # Internet Gateway ---------------*/

variable "igw_tags" {
  type = map(string)
  default = {
    Name       = "dev-igw-01"
    Enviroment = "dev"
    Owner      = "harshit"
  }
}

/*--------------- Public Route Table ---------------*/

variable "public_route_table_tags" {
  type = map(string)
  default = {
    Name       = "dev-public-RTB-01"
    Enviroment = "dev"
    Owner      = "harshit"
  }
}

/*--------------- Private Subnets ---------------*/

variable "private_subnets_cidr" {
  description = "private subnet cidr block"
  type        = list(string)
  default     = ["20.0.0.96/27", "20.0.0.128/26", "20.0.0.192/26"]

}

variable "private_subnets_azs" {
  description = "private subnet availability zones"
  type        = string
  default     = "us-east-2a"

}

variable "private_subnets_tags" {
  description = "private subnet tags"
  type        = list(map(string))
  default = [{
    Name       = "frontend-subnet"
    Enviroment = "dev"
    Owner      = "harshit"
    }, {
    Name       = "backend-subnet"
    Enviroment = "dev"
    Owner      = "harshit"
    }, {
    Name       = "database-subnet"
    Enviroment = "dev"
    Owner      = "harshit"
  }]
}

/*--------------- # EIP  ---------------*/

variable "eip_tags" {
  type = map(string)
  default = {
    Name       = "dev-eip-01"
    Enviroment = "dev"
    Owner      = "harshit"
  }
}

/*--------------- # NAT Gateway ---------------*/

variable "nat_tags" {
  type = map(string)
  default = {
    Name       = "dev-nat-01"
    Enviroment = "dev"
    Owner      = "harshit"
  }
}