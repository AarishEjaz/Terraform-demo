variable "ami_id" {
    type = string
    default = "ami-062f0cc54dbfd8ef1"
    description = "This is the AMI id of AL2 in ap-south-1"

}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "This is the type of Ec2 instance to launch"
}

variable "instance_count" {
    type = number
    default = 2
    description = "Number of instances "
}

variable "instance_name" {
    type = string
    default = "Terraform created"
    description = "Name of instance"
}

variable "aws_region" {
    type = string
    default = "ap-south-1"
    description = "Region of the instance"
}