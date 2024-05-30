############ Creating an S3 Bucket ############
resource "aws_s3_bucket" "bucket" {
  bucket        = "local-bucket-${random_string.random.result}"
  force_destroy = true
}

############ Creating bucket event notification ############
resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.bucket.id
  topic {
    topic_arn = aws_sns_topic.topic.arn
    events    = ["s3:ObjectCreated:*"]
  }
}