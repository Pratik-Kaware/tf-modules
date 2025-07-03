resource "aws_db_subnet_group" "this" {
    name = "${var.environment}-db-subnet-group"
    subnet_ids = var.subnet_ids
    tags = merge(var.tags, {
        Name = "${var.environment}-db-subnet-group"
    })
}

resource "aws_db_instance" "this" {
    identifier = "${var.environment}-postgres"
    allocated_storage = var.allocated_storage
    engine = var.engine
    engine_version = var.engine_version
    instance_class = var.db_instance_class
    db_name = var.db_name
    username = var.db_username
    password = var.db_password
    db_subnet_group_name = aws_db_subnet_group.this.name
    vpc_security_group_ids = var.vpc_security_group_ids
    publicly_accessible = var.publicly_accessible
    multi_az = var.multiple_az
    skip_final_snapshot = var.skip_final_snapshot
    tags = merge(var.tags, {
        Name = "${var.environment}-postgres"
    })

}
