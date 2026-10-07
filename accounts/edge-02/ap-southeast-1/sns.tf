# SNS topics in edge-02, ap-southeast-1.

resource "aws_sns_topic" "edge02_catalogue_alerts" {
  name = "edge02-catalogue-alerts"
  tags = {
    Name        = "edge02-catalogue alerts"
    Environment = "production"
    Team        = "apac-digital"
    CostCenter  = "CC-5200"
    Application = "catalogue"
    Owner       = "apac-digital@meridian-logistics.example"
  }
}
