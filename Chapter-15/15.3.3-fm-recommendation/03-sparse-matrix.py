from scipy.sparse import csr_matrix
import numpy as np

user_map = {u:i for i,u in enumerate(data['user_id'].unique())}
item_map = {i:j for j,i in enumerate(data['item_id'].unique())}

data['user_idx'] = data['user_id'].map(user_map)
data['item_idx'] = data['item_id'].map(item_map)

num_features = len(user_map) + len(item_map)

rows = np.arange(len(data))
cols = data['user_idx']
cols_item = data['item_idx'] + len(user_map)

X = csr_matrix((np.ones(len(data)), (rows, cols)), shape=(len(data), num_features))
X += csr_matrix((np.ones(len(data)), (rows, cols_item)), shape=(len(data), num_features))

y = data['interaction'].astype(np.float32)
