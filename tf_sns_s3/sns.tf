############ Creating an SNS Topic ############

resource "aws_sns_topic" "topic" {
  name   = "local-s3-event-notification"
  policy = <<POLICY
{
    "Version":"2012-10-17",
    "Statement":[
        {
        "Effect": "Allow",
        "Principal": { "Service": "s3.amazonaws.com" },
        "Action": "SNS:Publish",
        "Resource": "arn:aws:sns:*:*:local-s3-event-notification",
        "Condition":{
            "ArnLike":{"aws:SourceArn":"${aws_s3_bucket.bucket.arn}"}
            }
        }
    ]
}
POLICY
}

############ Creating SNS Topic Subscription ############
resource "aws_sns_topic_subscription" "topic-subscription" {
  topic_arn = aws_sns_topic.topic.arn
  protocol  = "email"
  endpoint  = var.endpoint
}

