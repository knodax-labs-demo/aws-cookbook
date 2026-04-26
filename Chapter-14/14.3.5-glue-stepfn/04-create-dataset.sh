cat <<EOF > customer_churn.csv
customer_id,age,country,total_spent
1,34,USA,200
2,29,India,150
3,45,USA,300
4,34,India,150
4,34,India,150
EOF

aws s3 cp customer_churn.csv s3://$RAW_BUCKET/
