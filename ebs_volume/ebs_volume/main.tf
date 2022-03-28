provider "aws"{
    region = "us-east-1"
    profile = "default"
}

resource "aws_instance" "instance_name" {
    instance_type = "t2.micro"
    ami="ami-0c02fb55956c7d316"
    availability_zone = "us-east-1a"
    tags = {
      "name" = "testebsvolume"
    }
}

resource "aws_ebs_volume" "ebs"{
 availability_zone = "us-east-1a"
 size=1
 type="gp2" 
 
 tags={
     name="hi aviral"
 }
}

resource "aws_volume_attachment" "ebs_attc"{
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.ebs.id
    instance_id = aws_instance.instance_name.id
    skip_destroy = true
}

resource "aws_instance" "rhel" {
  ami = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
}