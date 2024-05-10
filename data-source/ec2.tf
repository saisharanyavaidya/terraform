# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-0fbcae1d2d339bcf4"]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}
