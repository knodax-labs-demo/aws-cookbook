cat > etl-script.py <<EOF
import sys
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext

args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)

datasource = glueContext.create_dynamic_frame.from_catalog(
    database="$DB_NAME",
    table_name="$ACTUAL_TABLE_NAME"
)

glueContext.write_dynamic_frame.from_options(
    frame=datasource,
    connection_type="s3",
    connection_options={"path": "s3://$BUCKET_NAME/output/"},
    format="parquet"
)
EOF

sed -i '' "s/YOUR_BUCKET/$BUCKET_NAME/g" etl-script.py

aws s3 cp etl-script.py s3://$BUCKET_NAME/scripts/etl-script.py
