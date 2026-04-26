#!/usr/bin/env python3
import aws_cdk as cdk
from cdk_vpc_demo.vpc_stack import VpcStack
 
app = cdk.App()
VpcStack(app, "CdkVpcDemoStack")
app.synth()
