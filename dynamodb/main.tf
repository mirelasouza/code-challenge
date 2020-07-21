/* created by Mirela Natali Vieira de Souza
email: irelanatali@gmail.com 
*/


data "aws_dynamodb_table" "locationOrder" {
  name = "locationOrder"
}


resource "aws_dynamodb_table" "locationOrder" {
  name           = "location"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LocationId"

  attribute {
    name = "LocationId"
    type = "S"
  }