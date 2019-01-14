resource "aws_key_pair" "default" {
  key_name   = "terraform_lamp"
  public_key = "${file("files/id_rsa.pub")}"
}
