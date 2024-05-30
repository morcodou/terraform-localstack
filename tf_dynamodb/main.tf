resource "aws_dynamodb_table" "dynamodb_table" {
  name           = "dynamo-table"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5

  hash_key = "RollNo."

  attribute {
    name = "RollNo."
    type = "N"
  }
}
