module "course" {
  source = "./modules/dynamodb"
  context = module.base_labels.context
  name = "course"
  hash_key = "id"
  billing_mode = "PAY_PER_REQUEST"
}

module "authors" {
  source = "./modules/dynamodb"
  context = module.base_labels.context
  name = "authors"
  hash_key = "id"
  billing_mode = "PAY_PER_REQUEST"
}
















#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "4.8.0"
#    }
##    gsuite = {
##      source = "DeviaVir/gsuite"
##      version = "0.1.62"
##    }
##    google = {
##      source = "hashicorp/google"
##      version = "4.16.0"
##    }
#  }
#}
#
#provider "aws" {
#  region = "eu-central-1"
#}

#variable "user_table" {
#  type = string
#  default = "default_value"
#  #description
#}

locals {
  user_table = "forum"
}

#provider "gsuite" {
#  # Configuration options
#}

#provider "google" {
#  # Configuration options
#}


module "my_best_table_label" {
  source   = "cloudposse/label/null"
  # Cloud Posse recommends pinning every module to a specific version
  version = "0.25.0"

  context = module.base_labels.context

  name       = "my-best-table"

}




resource "aws_dynamodb_table" "this" {
  name             = module.my_best_table_label.id #module.base_labels.id #var.user_table #var./local.
  hash_key         = "TestTableHashKey"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }

}

#output "user_table_id" {
#  value = aws_dynamodb_table.this.id
#}

#output "user_table_arn" {
#  value = aws_dynamodb_table.this.arn
#}

module "s3" {
  source = "./modules/s3"
  context = module.base_labels.context
  bucket_name = "backend1" #var.bucket_1_name
}

module "s3_new" {
  source = "./modules/s3"
  context = module.base_labels.context
  bucket_name = "frontend1" #var.bucket_2_name
}


