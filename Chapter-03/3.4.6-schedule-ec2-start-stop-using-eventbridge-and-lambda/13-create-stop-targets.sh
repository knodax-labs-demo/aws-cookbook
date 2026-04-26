cat > targets-stop.json <<EOF
[
  {
    "Id": "1",
    "Arn": "arn:aws:lambda:<region>:<account-id>:function:EC2Scheduler",
    "Input": "{\"action\":\"stop\"}"
  }
]
EOF
