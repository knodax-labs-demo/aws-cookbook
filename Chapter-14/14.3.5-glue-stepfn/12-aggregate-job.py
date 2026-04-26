from awsglue.context import GlueContext
from pyspark.context import SparkContext

sc = SparkContext()
glueContext = GlueContext(sc)

datasource = glueContext.create_dynamic_frame.from_catalog(
    database="churn_db",
    table_name="clean_data"
)

df = datasource.toDF()

result = df.groupBy("country").avg("total_spent")

output = glueContext.create_dynamic_frame.from_df(result, glueContext, "output")

glueContext.write_dynamic_frame.from_options(
    frame=output,
    connection_type="s3",
    connection_options={"path": "s3://$OUTPUT_BUCKET/"},
    format="json"
)
