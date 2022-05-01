resource "aws_dynamodb_table" "this1" {
  count = var.dynamodb_this1_enabled ? 1 : 0
  name = "this1"
  hash_key = "TestTableHashKey"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }

  depends_on = [
    aws_dynamodb_table.this2,
  ]
}

resource "aws_dynamodb_table" "this2" {
  name = "this2"
  hash_key = "TestTableHashKey"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }
}

resource "aws_dynamodb_table" "this3" {
  for_each = toset(["Todd", "James", "Alice"])

  name = each.key
  hash_key = "TestTableHashKey"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }
}


