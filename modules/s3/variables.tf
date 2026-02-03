variable "bucket_name" {
  type = string
  default = "backend-s3-terraform-9641"
}

variable "backend_sse_type" {
  type = string
  default = "AES256"
}