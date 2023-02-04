provider "aws" {
region = "us-east-1"
access_key = "AKIA3FKIX4335XVU5F7G"
secret_key = "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"
}

resource "aws_instance" "dev" {
ami = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "mani"
}
}
