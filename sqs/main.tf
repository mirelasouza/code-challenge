/* created by Mirela Natali Vieira de Souza
email: irelanatali@gmail.com 
*/

resource "aws_sqs_queue" "location_queue" {
	name = "location-order-queue"
	visibility_timeout_seconds = 300
}

#defing the policy for queue above
resource "aws_sqs_queue_policy" "location_queue_policy" {
  queue_url = "${aws_sqs_queue.location_queue.id}"
  #policy    = "${data.location_queue_iam_policy.json}"
}