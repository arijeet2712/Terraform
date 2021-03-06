provider "aws" {
 region = "us-east-1"
 access_key = "***" or Profile ="***"
 secret_key = "***"
 token = "***"
}

resource "aws_instance" "ubuntu_config" {
 ami = "ami-03d315ad33b9d49c4"
 instance_type = "t2.micro"
 key_name = "terraform_key"
 vpc_security_group_ids = [
"sg-438a9c64"
]
 tags = {
  Name = "terraform_instance"
 }
}

resource "aws_s3_bucket" "tf_course" {
    bucket = "tf-course-arijeet202102"
    acl    = "private"
 }
