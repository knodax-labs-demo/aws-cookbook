aws configservice put-remediation-configurations   --remediation-configurations "[
    {
      "ConfigRuleName": "s3-bucket-public-read-prohibited",
      "TargetType": "SSM_DOCUMENT",
      "TargetId": "AWSConfigRemediation-ConfigureS3BucketPublicAccessBlock",
      "Automatic": true,
      "MaximumAutomaticAttempts": 3,
      "RetryAttemptSeconds": 60,
      "Parameters": {
        "AutomationAssumeRole": {
          "StaticValue": {
            "Values": ["arn:aws:iam::$ACCOUNT_ID:role/ConfigRemediationRole"]
          }
        },
        "BucketName": {
          "ResourceValue": {
            "Value": "RESOURCE_ID"
          }
        },
        "BlockPublicAcls": {
          "StaticValue": {
            "Values": ["true"]
          }
        },
        "IgnorePublicAcls": {
          "StaticValue": {
            "Values": ["true"]
          }
        },
        "BlockPublicPolicy": {
          "StaticValue": {
            "Values": ["true"]
          }
        },
        "RestrictPublicBuckets": {
          "StaticValue": {
            "Values": ["true"]
          }
        }
      }
    }
  ]"
