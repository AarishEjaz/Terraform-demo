provider "aws"{
    region= "ap-south-1"
}

resource "aws_instance" "terraform-ec2" {
    ami = "ami-062f0cc54dbfd8ef1"
    instance_type = "t2.micro"
    count = 1
    tags = {
        Name = "Terraform launched"
    }
    
}

resource "aws_security_group" "sg_example" {
  # ... other configuration ...

  name = "allow group"
  description = "allow traffic to instance"

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "Allowing the traffic via terraform config"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-aarish-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}