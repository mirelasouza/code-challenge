# created by Mirela Natali Vieira de Souza
#email: irelanatali@gmail.com 


resource "aws_sns_topic" "deliver_location_topic" {
	name = "location-topic"
	redrive_policy  = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.deliver_location_dl_queue.arn}\",\"maxReceiveCount\":5}"
    #visibility_timeout_seconds = 300

    tags = {
        Environment = "dev"
    }
}


# resources.tf
resource "aws_sqs_queue" "deliver_location_dl_queue" {
    name = "deliver-location-dl-queue"
}