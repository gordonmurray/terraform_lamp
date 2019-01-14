resource "aws_vpc" "default" {
  cidr_block                       = "172.31.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_support               = "True"
  enable_dns_hostnames             = "True"
  enable_classiclink               = "False"
  enable_classiclink_dns_support   = "False"
  assign_generated_ipv6_cidr_block = ""

  tags {
    Name = "Terraform LAMP VPC"
  }
}
