output "raw_unstructured_bucket_name" {
    value = aws_s3_bucket.unstructured_bucket_raw.bucket
}

output "raw_structured_bucket_name" {
    value = aws_s3_bucket.structured_bucket_raw.bucket
}

output "trusted_bucket_name" {
    value = aws_s3_bucket.trusted_bucket.bucket
}

output "id_bucket_trusted" {
    value = aws_s3_bucket.trusted_bucket.id
}