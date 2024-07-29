resource "aws_subnet" "public_subnet" {
    count                   = length(var.public_sub_cidr_block)
    
    vpc_id                  = aws_vpc.app_vpc.id
    cidr_block              = var.public_sub_cidr_block[count.index]
    availability_zone       = var.subnet_az[count.index]
    map_public_ip_on_launch = true

    tags = {
        Name = "${local.pub_sub_name}${upper(substr(var.subnet_az[count.index],8,9))}"
  }
}

resource "aws_subnet" "private_subnet" {
    count                   = length(var.private_sub_cidr_block)

    vpc_id                  = aws_vpc.app_vpc.id
    cidr_block              = var.private_sub_cidr_block[count.index]
    availability_zone       = var.subnet_az[count.index]
    map_public_ip_on_launch = false 
    
    tags = {
        Name = "${local.pri_sub_name}${upper(substr(var.subnet_az[count.index],8,9))}"
  }           
}
