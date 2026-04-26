mkdir -p diagram

cdk-dia --output ./diagram/vpc-architecture.svg --target-stack CdkVpcDemoStack

cdk-dia --output ./diagram/vpc-architecture.png --target-stack CdkVpcDemoStack

open ./diagram/vpc-architecture.png
