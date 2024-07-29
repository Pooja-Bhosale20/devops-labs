#IGW
resource "aws_internet_gateway" "app_igw" {
    vpc_id = aws_vpc.app_vpc.id

    tags = {
        Name = local.igw_name
  }

}

#EIP
resource "aws_eip" "app_eip" {
    domain = "vpc"  

    tags = {
        Name = local.eip_name
  }
}

#NAT
resource "aws_nat_gateway" "app_nat" {
    allocation_id = aws_eip.app_eip.id    
    subnet_id     = aws_subnet.public_subnet[0].id

    tags = {
        Name = local.nat_name
  }
}