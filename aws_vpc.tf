// 1.a Create VPC with CIDR Range 172.0.0.0/16 and name CloudIQ-Sample-VPC
// 1.d Spin t2.micro in private subnet
resource "aws_vpc" "CloudIQ-Sample-VPC" {
    cidr_block = "172.0.0.0/16"
    tags = {
      Name = "CloudIQ-Sample-VPC"
    }
}

// 1.b Create 2 private subnets named CloudIQ-Private-Subnet-1 and CloudIQ-Private-Subnet-2
// 1.d Spin t2.micro in private subnet
  resource "aws_subnet" "CloudIQ-Private-Subnet" {
    count = var.count_of_private_subnets
    vpc_id = aws_vpc.CloudIQ-Sample-VPC.id
    cidr_block = "172.0.${count.index + 1}.0/24"
    availability_zone = data.aws_availability_zones.available.names[count.index]
    tags = {
      Name = "CloudIQ-Private-Subnet-${count.index + 1}"
    }
  }

// 1.c Create 2 public subnets names CloudIQ-Public-Subnet-1 and CloudIQ-Public-Subnet-2
// 1.d Spin t2.micro in public subnet
resource "aws_subnet" "CloudIQ-Public-Subnet" {
    count = var.count_of_public_subnets
    vpc_id = aws_vpc.CloudIQ-Sample-VPC.id
    cidr_block = "172.0.${count.index + 3}.0/24"
    availability_zone = data.aws_availability_zones.available.names[count.index]
    map_public_ip_on_launch = true #public subnet
    tags = {
      Name = "CloudIQ-Public-Subnet-${count.index + 1}"
    }
  }

// Create Internet gateway
resource "aws_internet_gateway" "CloudIQ-Internet-Gateway" {
    vpc_id = aws_vpc.CloudIQ-Sample-VPC.id
    tags = {
      Name = "CloudIQ-Internet-Gateway"
    }
}

// Create Route Table
resource "aws_route_table" "CloudIQ-Route-Table" {
    vpc_id = aws_vpc.CloudIQ-Sample-VPC.id
    route {
        cidr_block = "0.0.0.0/0" #can not put "172.0.0.0/24" public internet because it is equal to vpc. The route can target only an instance or interface.
        gateway_id = aws_internet_gateway.CloudIQ-Internet-Gateway.id
    }
    tags = {
      Name = "CloudIQ-Route-Table"
    }
}

// Create Route Table Association
resource "aws_route_table_association" "CloudIQ-RTA" {
    count = 2   //The "count" object can only be used in "module", "resource", and "data" blocks, and only when the "count" argument is set.
    subnet_id = aws_subnet.CloudIQ-Public-Subnet.*.id[count.index]    //Because aws_subnet.CloudIQ-Private-Subnet has "count" set, its attributes must be accessed on specific instances
    route_table_id = aws_route_table.CloudIQ-Route-Table.id
}