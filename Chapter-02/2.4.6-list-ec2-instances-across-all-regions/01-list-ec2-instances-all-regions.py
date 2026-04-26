import boto3
from botocore.exceptions import ClientError

def list_instances():
    # Create an EC2 client in the default region
    ec2_client = boto3.client('ec2')

    try:
        # Retrieve all available AWS regions
        regions = [r['RegionName'] for r in ec2_client.describe_regions()['Regions']]
    except ClientError as e:
        print(f"Error fetching regions: {e}")
        return

    print(f"{'-'*60}")
    print(f"{'Listing EC2 Instances Across All AWS Regions':^60}")
    print(f"{'-'*60}\n")

    # Iterate through each region
    for region in regions:
        print(f"Region: {region}")
        ec2 = boto3.client('ec2', region_name=region)

        try:
            response = ec2.describe_instances()
        except ClientError as e:
            print(f"  Unable to access region {region}: {e}")
            continue

        instances = []
        for reservation in response['Reservations']:
            for instance in reservation['Instances']:
                instances.append({
                    'InstanceId': instance['InstanceId'],
                    'Type': instance['InstanceType'],
                    'State': instance['State']['Name']
                })

        if not instances:
            print("  No instances found.\n")
        else:
            for inst in instances:
                print(f"  {inst['InstanceId']} | {inst['Type']} | {inst['State']}")
            print()
    print(f"{'-'*60}")
    print("Script execution complete.\n")

if __name__ == "__main__":
    list_instances()
