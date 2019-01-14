resource "aws_security_group" "php" {
  name        = "php"
  description = "PHP server"
  vpc_id      = "${aws_vpc.default.id}"
}
