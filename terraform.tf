terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">= 3.28.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.32.1"
    }
  }
}