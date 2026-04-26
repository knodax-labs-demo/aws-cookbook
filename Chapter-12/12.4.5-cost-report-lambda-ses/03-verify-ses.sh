aws ses verify-email-identity \
  --email-address $SENDER_EMAIL \
  --region $REGION

aws ses verify-email-identity \
  --email-address $RECIPIENT_EMAIL \
  --region $REGION

aws ses get-identity-verification-attributes \
  --identities $SENDER_EMAIL $RECIPIENT_EMAIL \
  --region $REGION
