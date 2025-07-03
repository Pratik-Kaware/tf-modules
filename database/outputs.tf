output "db_endpoint" {
  description = "The endpoint of the database instance"
  value       = aws_db_instance.this.endpoint
}

output "db_instance_id" {
  description = "The ID of the database instance"
  value       = aws_db_instance.this.id
}