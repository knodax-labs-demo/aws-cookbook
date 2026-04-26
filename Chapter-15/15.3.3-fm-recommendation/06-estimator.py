import sagemaker
from sagemaker import image_uris

region = sagemaker.Session().boto_region_name
container = image_uris.retrieve("factorization-machines", region)

fm = sagemaker.estimator.Estimator(
    container,
    role="SageMakerExecutionRole",
    instance_count=1,
    instance_type="ml.m5.large",
    output_path=f"s3://{bucket}/output"
)

fm.set_hyperparameters(
    feature_dim=num_features,
    predictor_type='binary_classifier',
    epochs=10,
    num_factors=10,
    mini_batch_size=100
)
