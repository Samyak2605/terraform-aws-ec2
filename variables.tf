variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04 in us-east-1"
  default     = "ami-0c7217cdde317cfec"
}

variable "key_name" {
  default = "aws-key-terraform"
}

variable "public_key_path" {
  default = "~/.ssh/aws-key.pub"
}

variable "private_key_path" {
  default = "~/.ssh/aws-key"
}
