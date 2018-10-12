############################################
#  Ensure the provider is AWS
############################################
provider  "aws"     {
  region  =   "${var.region}"
}

############################################
#  Put the Terraform state into a S3 bucket
############################################
terraform {
  backend "s3" {
    bucket = "${var.master_state_s3_bucket}"
    key    = "${var.master_state_file}"
    region = "${var.region}"
  }
}


