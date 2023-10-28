// 1.d Create t2.micro EC2 instance
resource "aws_instance" "Public-EC2-Instance" {
    ami = "ami-0fa399d9c130ec923" //us-east-2 ohio
    key_name = "test"
    instance_type = "t2.micro"
    count = 2                //to create multiple instances of the resource with multiple instance ids
    subnet_id = aws_subnet.CloudIQ-Public-Subnet.*.id[count.index]
    tags = {
      Name = "CloudIQ-EC2-For-Public-subnets"
    }
}

resource "aws_instance" "Private-EC2-Instance" {
    ami = "ami-0fa399d9c130ec923" //us-east-2 ohio
    key_name = "test"
    instance_type = "t2.micro"
    count = 2                //to create multiple instances of the resource with multiple instance ids
    subnet_id = aws_subnet.CloudIQ-Private-Subnet.*.id[count.index]
    tags = {
      Name = "CloudIQ-EC2-For-Private-subnets"
    }
}