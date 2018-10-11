module "aws_vpc" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/modules/aws_vpc"

  vpc_name    =   "smc-dev-vpc"
  environment =   "development"
  layer       =   "foundation"
  automation  =   "terraform"
}
