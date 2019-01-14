resource "aws_route53_zone" "primary" {
  name    = "domain.com"
  comment = "Terraform LAMP"
}
