resource "aws_db_instance" "this" {
  identifier             = "nextcloud-rds"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "nextclouddb"
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.db_security_group_ids
  publicly_accessible    = false
  skip_final_snapshot    = true
  deletion_protection    = false
}

