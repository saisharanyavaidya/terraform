# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type_value
    tags = local.tag_val
}
