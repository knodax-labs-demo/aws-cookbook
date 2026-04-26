import pandas as pd

df = pd.read_csv("fraud_data.csv")

print(df.head())
print(df.describe())
