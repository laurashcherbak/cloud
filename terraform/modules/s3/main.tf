module "label" {
  source   = "cloudposse/label/null"
  # Cloud Posse recommends pinning every module to a specific version
  version = "0.25.0"
  context = var.context
  name = var.bucket_name
}

resource "aws_s3_bucket" "this" {
  #bucket = "my-tf-test-bucket-654696434898"
  bucket = module.label.id #var.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}
