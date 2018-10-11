module "aws_vpc_subnet_private_a" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/modules/aws_vpc_subnets"

  vpc_private_subnet_name_a     =   "smc-dev-vpc-subnet-priv-a"
  environment                   =   "development"
  layer                         =   "foundation"
  automation                    =   "terraform"
}

module "aws_vpc_subnet_private_b" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/modules/aws_vpc_subnets"

  vpc_private_subnet_name_a     =   "smc-dev-vpc-subnet-priv-b"
  environment                   =   "development"
  layer                         =   "foundation"
  automation                    =   "terraform"
}

module "aws_vpc_subnet_private_c" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/modules/aws_vpc_subnets"

  vpc_private_subnet_name_a     =   "smc-dev-vpc-subnet-priv-c"
  environment                   =   "development"
  layer                         =   "foundation"
  automation                    =   "terraform"
}

module "aws_vpc_subnet_public_a" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/modules/aws_vpc_subnets"

  vpc_public_subnet_name_a     =   "smc-dev-vpc-subnet-priv-a"
  environment                   =   "development"
  layer                         =   "foundation"
  automation                    =   "terraform"
}

module "aws_vpc_subnet_public_b" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/modules/aws_vpc_subnets"

  vpc_public_subnet_name_a     =   "smc-dev-vpc-subnet-priv-b"
  environment                   =   "development"
  layer                         =   "foundation"
  automation                    =   "terraform"
}

module "aws_vpc_subnet_public_c" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/modules/aws_vpc_subnets"

  vpc_public_subnet_name_a     =   "smc-dev-vpc-subnet-priv-c"
  environment                   =   "development"
  layer                         =   "foundation"
  automation                    =   "terraform"
}