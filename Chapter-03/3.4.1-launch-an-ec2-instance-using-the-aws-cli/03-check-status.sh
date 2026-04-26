aws ec2 describe-instances --filters "Name=tag:Name,Values=CLIDemoInstance" \
--query "Reservations[*].Instances[*].[InstanceId,State.Name,PublicDnsName]" --output table
