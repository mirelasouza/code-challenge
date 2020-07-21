/* created by Mirela Natali Vieira de Souza
email: irelanatali@gmail.com 
*/


data "aws_api_gateway_rest_api" "my_location_api" {
	name = "my-location-api"
}

data "aws_api_gateway_resource" "my_resource" {
	rest_api_id = "{data.aws_api_gateway_rest_api.my_location_api.id}"
	path 		= "/arn:aws:execute-api:sa-east-1:645139208618:cpen919nod/*/POST/"
}