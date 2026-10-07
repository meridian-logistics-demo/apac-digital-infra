# SNS topics in edge-01, ap-southeast-1.

resource "aws_sns_topic" "edge01_catalogue_alerts" {
  name = "edge01-catalogue-alerts"
  kms_master_key_id = "alias/aws/sns"
  tags = {
    Name        = "edge01-catalogue alerts"
    Environment = "production"
    Team        = "apac-digital"
    CostCenter  = "CC-5200"
    Application = "catalogue"
    Owner       = "apac-digital@meridian-logistics.example"
  }
}
