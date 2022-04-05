# defining provider 
provider "aws" {
    access_key = ""
    secret_key = ""
    region     = "us-west-2"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.s3_bucket.id
  key    = "aboutus.html"
  source = "aboutus.html"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
}