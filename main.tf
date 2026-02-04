module "s3" {
  source = "./modules/s3"
  bucket_name = "terra-backend-bucket-9641"
}

module "db" {
  source = "./modules/dynamoDB"
}