variables {
  newrelic_role_name                      = "NewRelicInfrastructure-Integrations-TEST"
  link_aws_account_metric_streams_enabled = true
  link_aws_account_metric_streams_name    = "TEST_MetricStreams"
  link_aws_account_api_polling_enabled    = false
  link_aws_account_api_polling_name       = "TEST_APIPolling"
  link_aws_account_api_polling_aws_integrations = {
    cloudfront = {
      enabled = true
    }
  }
  cloudwatch_metric_stream_include_filters = [
    "AWS/ECS",
    "AWS/ApplicationELB",
    "AWS/RDS",
    "AWS/SES",
    "AWS/Lambda"
  ]
  firehose_bucket_expiration_days = 7
  aws_config_enabled              = true
  aws_config_configuration_recorder_resource_types = [
    "AWS::ECS::Cluster",
    "AWS::ECS::Service",
    "AWS::ElasticLoadBalancingV2::LoadBalancer",
    "AWS::RDS::DBInstance",
    "AWS::RDS::DBCluster",
    "AWS::Lambda::Function"
  ]
  aws_config_configuration_recording_frequency = "DAILY"
  config_bucket_expiration_days                = 7
}

provider "newrelic" {
  account_id = var.newrelic_account_id
  api_key    = var.api_key
}

run "main" {
  command = plan
}