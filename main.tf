locals {
  ami_id = "ami-00a208c7cdba991ea"
}

resource "aws_instance" "dba" {
  ami               = "${local.ami_id}"
  availability_zone = "us-east-1a"
  key_name          = "${var.key_name}"
  instance_type     = "t2.nano"

  tags = {
    Name = "DB-A"
  }
}

resource "aws_instance" "dbb" {
  ami               = "${local.ami_id}"
  availability_zone = "us-east-1a"
  key_name          = "${var.key_name}"
  instance_type     = "t2.nano"

  tags = {
    Name = "DB-B"
  }
}

resource "aws_instance" "dbc" {
  ami               = "${local.ami_id}"
  availability_zone = "us-east-1a"
  key_name          = "${var.key_name}"
  instance_type     = "t2.nano"

  tags = {
    Name = "DB-C"
  }
}
