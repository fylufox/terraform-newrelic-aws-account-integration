## Nested Inputs Reference

## Usage
### 1. Configure NewRelic Provider
#### Example
##### providers.tf
```hcl
provider "newrelic" {
  account_id = "1234567"
  api_key    = "NRAK-XXXXXXXXXXXXXXXXXXXXXXXXX"
}
```
##### terraform.tf
```hcl
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">= 3.28.1"
    }
  }
}
```

### 2. Deploy module with refer to example usage