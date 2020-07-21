/* created by Mirela Natali Vieira de Souza
email: irelanatali@gmail.com 
*/

variable "get_location" {
  type = "string"
}

data "aws_lambda_function" "lambda_function_get_location" {
  function_name = "get_location"
}