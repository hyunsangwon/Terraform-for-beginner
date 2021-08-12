locals{
    bucket_name = var.s3_bucket_name
}

resource "aws_s3_bucket" "bucket_sample" {
    bucket  = "${local.bucket_name}"
}

# 퍼블릭 액세스 차단 설정
resource "aws_s3_bucket_public_access_block" "bucket_sample"{
    bucket = aws_s3_bucket.bucket_sample.id
    block_public_acls   = false
    block_public_policy = false
    ignore_public_acls = false
    restrict_public_buckets = false
}
# S3 버킷 정책 퍼블릭 설정
resource "aws_s3_bucket_policy" "public_bucket_sample" {
  bucket = aws_s3_bucket.bucket_sample.id

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "MYBUCKETPOLICY"
    Statement = [
      {
        Sid       = "IPAllow"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          aws_s3_bucket.bucket_sample.arn,
          "${aws_s3_bucket.bucket_sample.arn}/*",
        ]
      },
    ]
  })
}