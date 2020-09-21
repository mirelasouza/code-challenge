/* created by Mirela Natali Vieira de Souza
email: irelanatali@gmail.com 
*/

provider "aws" {
	access_key = ""
	secret_key = ""
	region = "sa-east-1"
}

resource "aws_instance" "example_identifierName" {
	ami				= "ami-f7acc09b"
	instance_type	= "t2.micro"
}
