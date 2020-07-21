/* created by Mirela Natali Vieira de Souza
email: irelanatali@gmail.com 
*/

provider "aws" {
	region = "sa-east-1"
}

resource "aws_sns_topic" "deliver_location_topic" {
	name = "location-topic"

/* delivery_policy = <<JSON
{
  "http": {
    "defaultHealthyRetryPolicy": {
      "minDelayTarget"    : 20,
      "maxDelayTarget"    : 600,
      "numRetries"        : 5,
      "backoffFunction"   : "exponential"
    },
    "disableSubscriptionOverrides": false
  }
}
JSON */

}

#subscribe SQS to the SNS event message
resource "aws_sns_topic_subscription" "deliver_location_subscription" {
  topic_arn            = "location-topic"
  protocol             = "sqs"
  endpoint             = "${aws_sqs_queue.location_queue.arn}"
}