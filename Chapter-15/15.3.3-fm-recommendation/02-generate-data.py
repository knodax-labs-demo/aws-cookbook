import pandas as pd
import numpy as np

num_users = 100
num_items = 50
num_records = 1000

data = pd.DataFrame({
    "user_id": np.random.randint(0, num_users, num_records),
    "item_id": np.random.randint(0, num_items, num_records),
    "interaction": np.random.choice([0,1], num_records, p=[0.9,0.1])
})

data.to_csv("interactions.csv", index=False)
data.head()
