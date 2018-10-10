module "aws_networking" {
  source = "/Users/spudbud/Codestuff/AWS-InfrastructureState/FoundationLayer/TerraformFoundtationLayer/modules/aws_networking"

  vpc_name    =   "smc-dev-vpc"
  environment =   "development"
  layer       =   "foundation"
  automation  =   "terraform"
}
