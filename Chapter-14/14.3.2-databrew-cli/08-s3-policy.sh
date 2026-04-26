cat > databrew-s3-policy.json <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::$SOURCE_BUCKET",
        "arn:aws:s3:::$SOURCE_BUCKET/*",
        "arn:aws:s3:::$OUTPUT_BUCKET",
        "arn:aws:s3:::$OUTPUT_BUCKET/*"
      ]
    }
  ]
}
EOF
aws iam put-role-policy \
  --role-name $ROLE_NAME \
  --policy-name DataBrewS3AccessPolicy \
  --policy-document file://databrew-s3-policy.json
