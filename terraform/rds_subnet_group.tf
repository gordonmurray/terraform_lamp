resource "aws_db_subnet_group" "default" {
  name       = "terraform_lamp"
  subnet_ids = ["${aws_subnet.a.id}", "${aws_subnet.b.id}", "${aws_subnet.c.id}"]
}
