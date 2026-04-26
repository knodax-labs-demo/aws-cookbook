cat > oac-config.yaml <<'EOF'
OriginAccessControlConfig:
  Name: StaticSiteOAC
  Description: OAC for static website bucket
  SigningProtocol: sigv4
  SigningBehavior: always
  OriginAccessControlOriginType: s3
EOF
