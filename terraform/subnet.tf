resource "aws_subnet" "a" {
  availability_zone               = "eu-west-1a"
  cidr_block                      = "172.31.32.0/20"
  ipv6_cidr_block                 = ""
  map_public_ip_on_launch         = "True"
  assign_ipv6_address_on_creation = "False"
  vpc_id                          = "${aws_vpc.default.id}"
}

resource "aws_subnet" "b" {
  availability_zone               = "eu-west-1b"
  cidr_block                      = "172.31.0.0/20"
  ipv6_cidr_block                 = ""
  map_public_ip_on_launch         = "True"
  assign_ipv6_address_on_creation = "False"
  vpc_id                          = "${aws_vpc.default.id}"
}

resource "aws_subnet" "c" {
  availability_zone               = "eu-west-1c"
  cidr_block                      = "172.31.16.0/20"
  ipv6_cidr_block                 = ""
  map_public_ip_on_launch         = "True"
  assign_ipv6_address_on_creation = "False"
  vpc_id                          = "${aws_vpc.default.id}"
}
