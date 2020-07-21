/* created by Mirela Natali Vieira de Souza
email: irelanatali@gmail.com 
*/

provider "aws" {
	access_key = "AKIAZMNKLDGVHSPZ6F2U"
	secret_key = "7eigQxn/CF2buGvQkfUh9g1jqj5SdVQ0XYZkTrXZ"
	region = "sa-east-1"
}

resource "aws_instance" "example_identifierName" {
	ami				= "ami-f7acc09b"
	instance_type	= "t2.micro"
}