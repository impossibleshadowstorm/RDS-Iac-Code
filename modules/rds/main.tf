resource "aws_db_instance" "default" {
  identifier             = "personal-projects-db"
  engine                 = "postgres"
  engine_version         = "16.1"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = var.DB_NAME
  username               = var.DB_USERNAME
  password               = var.DB_PASSWORD
  skip_final_snapshot    = true
  publicly_accessible    = true
  apply_immediately      = true
  db_subnet_group_name   = aws_db_subnet_group.default.name
  vpc_security_group_ids = [aws_security_group.default.id]
  storage_type           = "gp2"

  tags = {
    Name = "PersonalProjectsDbInstance"
  }
}

resource "aws_db_subnet_group" "default" {
  name       = "personal-projects-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "PersonalProjectsDbSubnetGroup"
  }
}

resource "aws_security_group" "default" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "PersonalProjectsRDS-SG"
  }
}
