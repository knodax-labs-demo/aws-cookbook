from aws_cdk import (
    Stack,
    RemovalPolicy,
    CfnOutput,
    aws_ec2 as ec2,
    aws_logs as logs,
)
from constructs import Construct
 
 
class VpcStack(Stack):
    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)
 
        flow_log_group = logs.LogGroup(
            self,
            "VpcFlowLogs",
            retention=logs.RetentionDays.ONE_MONTH,
            removal_policy=RemovalPolicy.DESTROY,
        )
 
        vpc = ec2.Vpc(
            self,
            "AppVpc",
            ip_addresses=ec2.IpAddresses.cidr("10.20.0.0/16"),
            max_azs=2,
            nat_gateways=2,
            subnet_configuration=[
                ec2.SubnetConfiguration(
                    name="public",
                    subnet_type=ec2.SubnetType.PUBLIC,
                    cidr_mask=24,
                ),
                ec2.SubnetConfiguration(
                    name="private-app",
                    subnet_type=ec2.SubnetType.PRIVATE_WITH_EGRESS,
                    cidr_mask=24,
                ),
            ],
            gateway_endpoints={
                "S3": ec2.GatewayVpcEndpointOptions(
                    service=ec2.GatewayVpcEndpointAwsService.S3
                ),
                "DynamoDB": ec2.GatewayVpcEndpointOptions(
                    service=ec2.GatewayVpcEndpointAwsService.DYNAMODB
                ),
            },
        )
 
        ssm_services = [
            ec2.InterfaceVpcEndpointAwsService.SSM,
            ec2.InterfaceVpcEndpointAwsService.SSM_MESSAGES,
            ec2.InterfaceVpcEndpointAwsService.EC2_MESSAGES,
        ]
 
        for i, svc in enumerate(ssm_services):
            ec2.InterfaceVpcEndpoint(
                self,
                f"IfaceEndpoint{i}",
                vpc=vpc,
                service=svc,
                subnets=ec2.SubnetSelection(
                    subnet_type=ec2.SubnetType.PRIVATE_WITH_EGRESS
                ),
                private_dns_enabled=True,
            )
 
        vpc.add_flow_log(
            "VpcFlowLog",
            destination=ec2.FlowLogDestination.to_cloud_watch_logs(flow_log_group),
            traffic_type=ec2.FlowLogTrafficType.ALL,
        )
 
        app_sg = ec2.SecurityGroup(
            self,
            "AppSecurityGroup",
            vpc=vpc,
            description="Allow HTTP from anywhere to app tier",
            allow_all_outbound=True,
        )
 
        app_sg.add_ingress_rule(
            ec2.Peer.any_ipv4(),
            ec2.Port.tcp(80),
            "HTTP from anywhere",
        )
 
        CfnOutput(self, "VpcId", value=vpc.vpc_id)
        CfnOutput(self, "PublicSubnetA", value=vpc.public_subnets[0].subnet_id)
        CfnOutput(self, "PrivateSubnetA", value=vpc.private_subnets[0].subnet_id)
