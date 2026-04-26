import sagemaker
from sagemaker.model import Model
from sagemaker.serializers import JSONSerializer
from sagemaker.deserializers import JSONDeserializer

# Initialize session and role
session = sagemaker.Session()
role = sagemaker.get_execution_role()

# Define model
model = Model(
    model_data='s3://ml-models-bucket/sentiment-model/model.tar.gz',
    image_uri='811284229777.dkr.ecr.us-east-1.amazonaws.com/blazingtext:latest',
    role=role,
    sagemaker_session=session
)

# Deploy endpoint
predictor = model.deploy(
    initial_instance_count=1,
    instance_type='ml.m5.large'
)

# Configure serializer/deserializer
predictor.serializer = JSONSerializer()
predictor.deserializer = JSONDeserializer()
