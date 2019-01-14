resource "aws_route" "gateway" {
  route_table_id         = "${aws_route_table.default.id}"
  destination_cidr_block = "172.31.0.0/16"
  gateway_id             = "${aws_internet_gateway.default.id}"
}

resource "aws_route" "local" {
  route_table_id         = "${aws_route_table.default.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.default.id}"
}
