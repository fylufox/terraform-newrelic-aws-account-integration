terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">= 3.40.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.61.0"
    }
  }
}