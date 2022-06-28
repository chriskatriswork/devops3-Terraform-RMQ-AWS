provider "aws" {
    region = "us-east-2"
    profile = var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-02d1e544b84bf7502"
    instance_type = "t2.micro"
    key_name = "rabbitmq"
    vpc_security_group_ids = ["sg-048b10fe4954a3877 "]

    tags = {
        Name = var.name
        group = var.group
    }
}