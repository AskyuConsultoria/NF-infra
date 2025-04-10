
resource "aws_s3_bucket" "unstructured_bucket_raw" {
  bucket_prefix = "askyu-nf-unstructured-raw"

  tags = {
    Name = "bucket-raw-1"
  }
}

resource "aws_s3_bucket" "structured_bucket_raw" {
  bucket_prefix = "askyu-nf-structured-raw"

  tags = {
    Name = "bucket-raw-2"
  }
}


resource "aws_s3_bucket" "trusted_bucket" {
  bucket_prefix = "askyu-nf-trusted"

  tags = {
    Name = "bucket-raw-3"
  }
}
