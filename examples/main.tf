module "aws-account-integration" {
  source = "falcon-terraform-modules/aws-account-integration/newrelic"

  newrelic_account_id                     = "1234567"
  newrelic_license_key                    = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  link_aws_account_metric_streams_enabled = true
  link_aws_account_api_polling_enabled    = true
  link_aws_account_api_polling_aws_integrations = {
    cloudfront = {
      enabled = true
    }
  }
  create_metric_streams_aws_resources = true
  cloudwatch_metric_stream_include_filters = [
    {
      namespace    = "AWS/ECS",
      metric_names = ["CPUUtilization", "MemoryReservation"]
    },
    {
      namespace    = "AWS/RDS",
      metric_names = []
    }
  ]
  firehose_bucket_expiration_days = 7
  aws_config_enabled              = true
  aws_config_configuration_recorder_resource_types = [
    "AWS::ECS::Cluster",
    "AWS::ECS::Service",
    "AWS::RDS::DBInstance",
    "AWS::RDS::DBCluster"
  ]
  aws_config_configuration_recording_frequency = "DAILY"
  config_bucket_expiration_days                = 7
}