if any(tag['Key'] == 'Environment' and tag['Value'] == 'Production' for tag in instance.get('Tags', [])):
    continue
