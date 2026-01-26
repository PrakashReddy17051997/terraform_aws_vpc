module "Roboshop_VPC" {
    source = "/Users/orakanti1997/Documents/DevOps/terraform_aws_vpc"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    
    #private, public, database subnets
    private_subnets_cidr = var.private_subnets_cidr
    public_subnets_cidr = var.public_subnets_cidr
    database_subnets_cidr = var.database_subnets_cidr
    
    is_vpc_peering_required = var.is_vpc_peering_required
}