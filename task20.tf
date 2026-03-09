# Task: Create an SSM parameter using terraform

resource "aws_ssm_parameter" "nautilus_parameter" {
  name  = "nautilus-ssm-parameter"
  type  = "String"
  value = "nautilus-value"
}