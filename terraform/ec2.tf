# Get AMI
data "aws_ami" "php" {
  most_recent = true

  filter {
    name   = "name"
    values = ["php"]
  }

  owners = ["${var.aws_account_id}"]
}

# Use the AMI to create an EC2 instance
resource "aws_instance" "default" {
  ami                    = "${data.aws_ami.php.id}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.php.id}"]
  subnet_id              = "${aws_subnet.a.id}"
  key_name               = "${aws_key_pair.default.key_name}"
}
