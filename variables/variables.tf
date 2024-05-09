variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL- 9 AMI id"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags_list" {
    default = {
        Name = "DB"
        Module = "DB"
        Project_Name = "Expense"
        Environment = "Dev"
    }
}

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