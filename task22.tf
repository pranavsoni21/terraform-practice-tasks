# Task: Cloudformation template deployment using terraform


resource "aws_cloudformation_stack" "nautilus_stack" {
  name = "nautilus-stack"

  template_body = <<STACK
{
  "AWSTemplateFormatVersion": "2010-09-09",
  "Resources": {
    "NautilusBucket": {
      "Type": "AWS::S3::Bucket",
      "Properties": {
        "BucketName": "nautilus-bucket-7480",
        "VersioningConfiguration": {
          "Status": "Enabled"
        }
      }
    }
  }
}
STACK
}