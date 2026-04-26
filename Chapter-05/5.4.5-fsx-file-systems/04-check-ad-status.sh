aws ds describe-directories \
  --query "DirectoryDescriptions[*].[DirectoryId,Name,Type,Stage]" \
  --output table
