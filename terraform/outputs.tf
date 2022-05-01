output "user_table_id" {
  value = aws_dynamodb_table.this.id
}

output "user_table_arn" {
  value = aws_dynamodb_table.this.arn
}

output "s3_module_bucket_arn" {
  value = module.s3.bucket_arn
}

output "s3_module_bucket_domain_name" {
  value = module.s3.bucket_domain_name
}

