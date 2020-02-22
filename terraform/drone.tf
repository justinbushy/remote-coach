provider "aws" {
    profile = "default"
    region = "us-west-2"
}

data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type" 
        values = ["hvm"]
    }

    owners = ["099720109477"]
}

resource "aws_instance" "drone" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-095bc4bd27480a155"]
    subnet_id = "subnet-018fd2db4fdea3d70"

    tags = {
        Name = "Drone"
    }
}