provider  "aws"     {
  region  =   "us-west-2"
}

variable "vpc_name" {
  description   =   "the name of the VPC for the development environment" 
}

variable  "environment" {
  description   =   "the environment being targeted to ensure the desired state"
}

variable  "layer" {
  description   =   "the infrastructure layer being targeted"
}

variable  "automation"  {
  description   =   "which tool is being used to ensure the state of the infrastructure, terraform or ansible"
}

resource  "aws_vpc"  "vpc"   {
  cidr_block    =  "10.0.0.0/16"

  tags         {
    Name        = "${var.vpc_name}"
    Environment = "${var.environment}"
    Layer       = "${var.layer}"
    ensured_by  = "${var.automation}"
  }
}

output  "vpc_id"  {
  value   = "${aws_vpc.vpc.id}"
}

output  "vpc_arn" { 
  value   = "${aws_vpc.vpc.arn}"
}

output  "vpc_cidr_block"  {
  value   = "${aws_vpc.vpc.cidr_block}"
}
