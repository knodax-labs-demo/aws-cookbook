df = pd.get_dummies(df, columns=["location", "merchant"])

X = df.drop("is_fraud", axis=1)
y = df["is_fraud"]
