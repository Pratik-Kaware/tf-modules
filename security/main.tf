resource "aws_security_group" "web_sg" {
    name    =   "${var.environment}-web-sg"
    description =   "Allow SSH and HTTP"
    vpc_id  =   var.vpc_id  
    
    ingress{
        description = "SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = merge(var.tags, {
        Name    =   "${var.environment}-web-sg"
    })
}

