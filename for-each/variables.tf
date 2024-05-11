#ec2 instance variables
variable "instance_names" {
  type = map
  default = {
    db = "t2.small",
    backend = "t2.micro"
    frontend = "t2.micro"
  }
}


variable "common_tags" {
    default = {
        Project_Name = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}


#route53 variables

variable "zone_id" {
    default = "Z09208763BSEMKKGPRWGK"
}

variable "domain_name" {
    default = "avyan.site"
}