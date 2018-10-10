output      "vpc_id"    {
    value   =   "${module.aws_networking.vpc_id}"
}

output      "vpc_arn"   {
    value   =   "${module.aws_networking.vpc_arn}"
}

output      "vpc_cidr_block"    {
    value   =   "${module.aws_networking.vpc_cidr_block}"
}