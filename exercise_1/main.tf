provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

resource "aws_s3_bucket" "tf-root-module-bucket" {
  depends_on = [time_sleep.wait_30_seconds]
  bucket = "${var.s3_bucket_name}"
  acl = "private"
  
  versioning {
    enabled = true
  }

resource 
  
  tags = {
    Name        = "${var.s3_bucket_name}"
    Environment = "${var.tag_env}"
  }
 }
## module "s3_module_private_repo" {
##  source = "git@github.com:rc-harness/private.git"
##  }
  
resource "time_sleep" "wait_30_seconds" {

  create_duration = "300s"
}
