aws ec2 describe-images --owners self \
--query "Images[*].[ImageId,Name,State]" --output table
