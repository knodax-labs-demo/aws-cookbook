wget https://d2s8p88vqu9w66.cloudfront.net/releases/greengrass-nucleus-latest.zip
unzip greengrass-nucleus-latest.zip -d GreengrassInstaller
cd GreengrassInstaller

sudo -E java -Droot="/greengrass/v2" -Dlog.store=FILE \
  -jar ./lib/Greengrass.jar \
  --aws-region <REGION> \
  --thing-name $THING_NAME \
  --thing-group-name GreengrassGroup \
  --tes-role-name GreengrassV2TokenExchangeRole \
  --tes-role-alias-name GreengrassCoreTokenExchangeRoleAlias \
  --component-default-user ggc_user:ggc_group \
  --provision true \
  --setup-system-service true

sudo systemctl start greengrass
