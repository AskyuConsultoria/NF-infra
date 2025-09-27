
resource "aws_s3_bucket" "unstructured_bucket_raw" {
  bucket_prefix = "askyu-syntro-unstructured-raw"
  force_destroy = true

  tags = {
    Name = "bucket-raw-1"
  }
}

resource "aws_s3_bucket" "structured_bucket_raw" {
  bucket_prefix = "askyu-syntro-structured-raw"
  force_destroy = true

  tags = {
    Name = "bucket-raw-2"
  }
}


resource "aws_s3_bucket" "trusted_bucket" {
  bucket_prefix = "askyu-syntro-trusted"
  force_destroy = true

  tags = {
    Name = "bucket-raw-3"
  }
}


resource "aws_s3_bucket" "inventory_bucket" {
  bucket_prefix = "askyu-syntro-inventory"
  force_destroy = true 

  tags = {
    Name = "bucket-inventory"
  }
}
