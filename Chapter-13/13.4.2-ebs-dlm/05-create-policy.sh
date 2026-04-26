aws dlm create-lifecycle-policy \
  --execution-role-arn arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME \
  --description "Daily EBS Snapshot Policy" \
  --state ENABLED \
  --policy-details '{
    "ResourceTypes":["VOLUME"],
    "TargetTags":[{"Key":"Backup","Value":"True"}],
    "Schedules":[{
      "Name":"DailyBackups",
      "CreateRule":{
        "Interval":24,
        "IntervalUnit":"HOURS",
        "Times":["00:00"]
      },
      "RetainRule":{
        "Count":7
      },
      "CopyTags": true
    }]
  }' \
  --region $REGION
