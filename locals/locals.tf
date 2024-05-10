locals {
    ami_id = "ami-090252cbe067a9e58"
    sg_id = "sg-0fbcae1d2d339bcf4"
    instance_type_value = var.instance_type == "db" ? "t3.small" : "t3.micro"
    tag_val = {
        Name = "locals"
    }
}