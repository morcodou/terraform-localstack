resource "aws_dynamodb_table_item" "item1" {
  table_name = aws_dynamodb_table.dynamodb_table.name
  hash_key   = aws_dynamodb_table.dynamodb_table.hash_key
  item       = <<ITEM
{
  "RollNo.": {"N": "1"},
  "Name": {"S": "Anant"}
}
ITEM
}

resource "aws_dynamodb_table_item" "item2" {
  table_name = aws_dynamodb_table.dynamodb_table.name
  hash_key   = aws_dynamodb_table.dynamodb_table.hash_key
  item = <<ITEM
{
  "RollNo.": {"N": "2"},
  "Name": {"S": "Pavan"}
}
ITEM
}

resource "aws_dynamodb_table_item" "item3" {
  table_name = aws_dynamodb_table.dynamodb_table.name
  hash_key   = aws_dynamodb_table.dynamodb_table.hash_key
  item = <<ITEM
{
  "RollNo.": {"N": "3"},
  "Name": {"S": "Nikhil"}
}
ITEM
}