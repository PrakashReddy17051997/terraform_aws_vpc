variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}
variable "common_tags" {
    type = map 
    default = {}
}
variable "vpc_tags" {
    type = map
  
}
variable "project_name" {
    type = string
  
}

variable "environment" {
    type = string
  
}
variable "igw_tags" {
    type = map
    default = {} 

}

variable "public_subnets_cidr" {
    type = list 
    validation {
      condition = length(var.public_subnets_cidr) == 2
      error_message = "Please give valid public subnet cidr block list containing only 2 element in the list"

    }
  
}

variable "public_subnet_tags" {
    default = {}
  
}

variable "private_subnets_cidr" {
    type = list 
    validation {
      condition = length(var.private_subnets_cidr) == 2
      error_message = "Please give valid private subnet cidr block list containing only 2 element in the list"

    }
  
}

variable "private_subnets_tags" {
    default = {}
  
}

variable "database_subnets_cidr" {
    type = list 
    validation {
      condition = length(var.database_subnets_cidr) == 2
      error_message = "Please give valid database subnet cidr block list containing only 2 element in the list"

    }
  
}

variable "database_subnets_tags" {
    default = {}
  
} 

variable "public_route_table_tags" {
    default = {} 
  
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
    default = {}
  
}
variable "nat_gateway_tags" {
  default = {}
}