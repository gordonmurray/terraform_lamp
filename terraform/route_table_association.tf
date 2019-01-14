resource "aws_route_table_association" "routetable_association_a" {
  subnet_id      = "${aws_subnet.a.id}"
  route_table_id = "${aws_route_table.default.id}"
}

resource "aws_route_table_association" "routetable_association_b" {
  subnet_id      = "${aws_subnet.b.id}"
  route_table_id = "${aws_route_table.default.id}"
}

resource "aws_route_table_association" "routetable_association_c" {
  subnet_id      = "${aws_subnet.c.id}"
  route_table_id = "${aws_route_table.default.id}"
}
