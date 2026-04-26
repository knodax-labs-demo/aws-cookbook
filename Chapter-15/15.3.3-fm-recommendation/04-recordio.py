import sagemaker.amazon.common as smac

train_data = smac.write_numpy_to_dense_tensor(X.toarray().astype('float32'), y.values.astype('float32'))
