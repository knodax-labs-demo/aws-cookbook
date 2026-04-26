import boto3

client = boto3.client('kinesis', region_name='us-east-1')

response = client.describe_stream(StreamName='sensor-data-stream')
shard_id = response['StreamDescription']['Shards'][0]['ShardId']

iterator = client.get_shard_iterator(
    StreamName='sensor-data-stream',
    ShardId=shard_id,
    ShardIteratorType='TRIM_HORIZON'
)['ShardIterator']

records = client.get_records(ShardIterator=iterator, Limit=10)

for record in records['Records']:
    print(record['Data'])
