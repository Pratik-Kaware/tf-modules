resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    tags = merge(var.tags, {
        Name = "${var.environment}-vpc"
    })
}

resource "aws_subnet" "public" {
    count   = length(var.public_subnets)
    vpc_id  = aws_vpc.main.id
    cidr_block = var.public_subnets[count.index]
    availability_zone = element(var.azs, count.index)
    map_public_ip_on_launch = true
    tags = merge(var.tags, {
        Name = "${var.environment}-public-${count.index + 1}"
    })
}

