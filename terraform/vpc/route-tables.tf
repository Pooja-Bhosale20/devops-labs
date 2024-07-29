#Public Subnet RT
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.app_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.app_igw.id
  }

  tags = {
    Name = local.pub_rt_name
  }  
}

resource "aws_route_table_association" "public_rt" {
  count          = length(aws_subnet.public_subnet)
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_rt.id
}

#Private Subnet RT
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.app_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"    
    nat_gateway_id = aws_nat_gateway.app_nat.id
  }

  tags = {
    Name = local.pri_rt_name
  }  
}

resource "aws_route_table_association" "private_rt" {
  count           = length(aws_subnet.private_subnet)
  subnet_id       = aws_subnet.private_subnet[count.index].id
  route_table_id  = aws_route_table.private_rt.id
}

