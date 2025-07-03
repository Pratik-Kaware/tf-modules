variable "db_name" {}
variable "db_username" {
  description = "The username for the database"
}
variable "db_password" {
  description = "The password for the database"
  sensitive   = true 
}
variable "db_instance_class" {
  description = "The instance class for the database"
  default = "db.t3.micro"
}
variable "allocated_storage" {
    default = 20
}
variable "engine" {
    default = "postgres"
}
variable "engine_version" {
    default = "15.4"
}
variable "subnet_ids" {
  description = "List of subnet IDs for the database"
  type        = list(string)
}
variable "vpc_security_group_ids" {
  description = "List of security group IDs for the database"
  type        = list(string)
}
variable "publicly_accessible" {
    default = false
}
variable "multiple_az" {
    default = false
}
variable "skip_final_snapshot" {
    default = true
}
variable "environment" {
  description = "The environment for the database (e.g., dev, staging, prod)"
}
variable "tags" {
    type = map(string)
}