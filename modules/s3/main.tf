resource "aws_s3_bucket" "backend_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "backend_versioning" {
  bucket = aws_s3_bucket_server_side_encryption_configuration.sse_backend.id
  versioning_configuration {
    status = "Enabled"
  }
  #depends_on = [ aws_s3_bucket.backend_bucket ]
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse_backend" {
  bucket = aws_s3_bucket.backend_bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.backend_sse_type
    }
  }
}