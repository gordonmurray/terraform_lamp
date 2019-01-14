resource "aws_db_instance" "mariadb" {
  identifier             = "database"
  allocated_storage      = "20"
  storage_type           = "gp2"
  engine                 = "mariadb"
  engine_version         = "10.3.8"
  instance_class         = "db.t2.micro"
  username               = "database_user"
  password               = "database_password"
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
  vpc_security_group_ids = ["${aws_security_group.php.id}"]
  copy_tags_to_snapshot  = "false"
  publicly_accessible    = "true"
  skip_final_snapshot    = "true"
  storage_encrypted      = "false"
  iops                   = "0"
}
