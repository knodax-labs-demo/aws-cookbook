import boto3
import datetime

ec2 = boto3.client('ec2')
cloudwatch = boto3.client('cloudwatch')

def lambda_handler(event, context):
    # Get all running instances
    instances = ec2.describe_instances(
        Filters=[{'Name': 'instance-state-name', 'Values': ['running']}]
    )

    idle_instances = []
    now = datetime.datetime.utcnow()

    # Loop through all instances and evaluate CPU utilization
    for reservation in instances['Reservations']:
        for instance in reservation['Instances']:
            instance_id = instance['InstanceId']

            metrics = cloudwatch.get_metric_statistics(
                Namespace='AWS/EC2',
                MetricName='CPUUtilization',
                Dimensions=[{'Name': 'InstanceId', 'Value': instance_id}],
                StartTime=now - datetime.timedelta(hours=1),
                EndTime=now,
                Period=300,
                Statistics=['Average']
            )

            datapoints = metrics.get('Datapoints', [])
            if not datapoints:
                continue

            avg_cpu = sum(dp['Average'] for dp in datapoints) / len(datapoints)

            if avg_cpu < 5.0:  # Threshold in percent
                idle_instances.append(instance_id)
                print(f"Instance {instance_id} is idle (avg CPU {avg_cpu:.2f}%)")

    # Stop idle instances
    if idle_instances:
        print(f"Stopping instances: {idle_instances}")
        ec2.stop_instances(InstanceIds=idle_instances)
    else:
        print("No idle instances found.")
