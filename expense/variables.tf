#ec2 instance variables
variable "instance_names" {
  type = list
  default = ["db","backend","frontend"]
}

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL- 9 AMI id"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "common_tags" {
    default = {
        Project_Name = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

#security group variables

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing 22 port"
}

variable "ssh_port" {
    default  = 22
}

variable "protocol" {
    default  = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#route53 variables

variable "zone_id" {
    default = "Z09208763BSEMKKGPRWGK"
}

variable "domain_name" {
    default = "avyan.site"
}