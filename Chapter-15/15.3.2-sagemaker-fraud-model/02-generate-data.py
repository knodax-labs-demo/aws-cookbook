import pandas as pd
import numpy as np

np.random.seed(42)

n = 1000

data = pd.DataFrame({
    "amount": np.random.uniform(10, 1000, n),
    "hour": np.random.randint(0, 24, n),
    "location": np.random.choice(["NY", "CA", "TX"], n),
    "merchant": np.random.choice(["food", "electronics", "travel"], n)
})

data["is_fraud"] = ((data["amount"] > 800) & (data["hour"] > 20)).astype(int)

data.to_csv("fraud_data.csv", index=False)
