resource "aws_instance" "web"{
    count   = var.instance_count
    ami     = var.ami
    instance_type   = var.instance_type
    subnet_id   = var.subnet_ids[count.index % length(var.subnet_ids)]
    key_name    = var.key_pair_name
    tags    = merge(var.tags, {
        Name = "${var.environment}-web-${count.index + 1 }"
    })
}
