import boto3

def lambda_handler(event, context):
    ec2 = boto3.client('ec2', region_name='<region>')
    action = event.get('action', 'start')

    instance_ids = ['<instance-id>']

    if action == 'start':
        ec2.start_instances(InstanceIds=instance_ids)
        print("Started instances:", instance_ids)

    elif action == 'stop':
        ec2.stop_instances(InstanceIds=instance_ids)
        print("Stopped instances:", instance_ids)
