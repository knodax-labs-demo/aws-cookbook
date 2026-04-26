rm -rf cdk.out template.yaml

cdk synth CdkVpcDemoStack > template.yaml

grep "AWS::EC2::VPC" template.yaml
grep "AWS::EC2::Subnet" template.yaml
grep "AWS::EC2::NatGateway" template.yaml
grep "AWS::EC2::VPCEndpoint" template.yaml
