import sys
from awsglue.context import GlueContext
from pyspark.context import SparkContext

sc = SparkContext()
glueContext = GlueContext(sc)

datasource = glueContext.create_dynamic_frame.from_catalog(
    database="churn_db",
    table_name="customer_churn"
)

df = datasource.toDF().dropDuplicates()

output = glueContext.create_dynamic_frame.from_df(df, glueContext, "output")

glueContext.write_dynamic_frame.from_options(
    frame=output,
    connection_type="s3",
    connection_options={"path": "s3://$CLEAN_BUCKET/"},
    format="json"
)
