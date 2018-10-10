provider  "aws"     {
  region  =   "us-west-2"
}

variable "vpc_private_subnet_name_a" {
  description   =   "the name of the private subnet for the "${var.environment}" environment in the A availability zone" 
}

variable "vpc_private_subnet_name_b" {
  description   =   "the name of the private subnet for the "${var.environment}" environment in the B availability zone" 
}

variable "vpc_private_subnet_name_c" {
  description   =   "the name of the private subnet for the "${var.environment}" environment in the C availability zone" 
}

variable "vpc_public_subnet_name_a" {
  description   =   "the name of the public subnet for the "${var.environment}" environment in the A availability zone" 
}

variable "vpc_public_subnet_name_b" {
  description   =   "the name of the public subnet for the "${var.environment}" environment in the B availability zone" 
}

variable "vpc_public_subnet_name_c" {
  description   =   "the name of the public subnet for the "${var.environment}" environment in the C availability zone" 
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

resource    "aws_subnet"    "private_subnet_a"   {
    vpc_id      =   "${aws_vpc.vpc.id}"
    cidr_block  =   "10.0.10.0/24"

    tags         {
        Name        = "${var.vpc_private_subnet_name_a}"
        Environment = "${var.environment}"
        Layer       = "${var.layer}"
        ensured_by  = "${var.automation}"
  }
}

resource    "aws_subnet"    "private_subnet_b"   {
    vpc_id      =   "${aws_vpc.vpc.id}"
    cidr_block  =   "10.0.10.0/24"

    tags         {
        Name        = "${var.vpc_private_subnet_name_b}"
        Environment = "${var.environment}"
        Layer       = "${var.layer}"
        ensured_by  = "${var.automation}"
  }
}

resource    "aws_subnet"    "private_subnet_c"   {
    vpc_id      =   "${aws_vpc.vpc.id}"
    cidr_block  =   "10.0.10.0/24"

    tags         {
        Name        = "${var.vpc_private_subnet_name_c}"
        Environment = "${var.environment}"
        Layer       = "${var.layer}"
        ensured_by  = "${var.automation}"
  }
}

resource    "aws_subnet"    "public_subnet_a"   {
    vpc_id      =   "${aws_vpc.vpc.id}"
    cidr_block  =   "10.0.10.0/24"

    tags         {
        Name        = "${var.vpc_public_subnet_name_a}"
        Environment = "${var.environment}"
        Layer       = "${var.layer}"
        ensured_by  = "${var.automation}"
  }
}

resource    "aws_subnet"    "private_subnet_b"   {
    vpc_id      =   "${aws_vpc.vpc.id}"
    cidr_block  =   "10.0.10.0/24"

    tags         {
        Name        = "${var.vpc_public_subnet_name_b}"
        Environment = "${var.environment}"
        Layer       = "${var.layer}"
        ensured_by  = "${var.automation}"
  }
}

resource    "aws_subnet"    "private_subnet_c"   {
    vpc_id      =   "${aws_vpc.vpc.id}"
    cidr_block  =   "10.0.10.0/24"

    tags         {
        Name        = "${var.vpc_public_subnet_name_c}"
        Environment = "${var.environment}"
        Layer       = "${var.layer}"
        ensured_by  = "${var.automation}"
  }
}