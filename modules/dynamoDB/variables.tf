variable "dynamo_table_name" {
  type = string
  default = "backend-lock-table"
}

variable "lockID" {
  type = string
  default = "LockID"
}