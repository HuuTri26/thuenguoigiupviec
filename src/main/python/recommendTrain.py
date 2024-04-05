import pandas as pd
import numpy as np
import sklearn
import sys
from sklearn.decomposition import TruncatedSVD
from sqlalchemy import create_engine
import numpy as np

# Thay đổi các thông số kết nối theo cơ sở dữ liệu SQL Server của bạn
server = 'HP'
database = 'shopThoiTrang'
username = 'sa'
password = '123456'

# Tạo một URI kết nối sử dụng SQLAlchemy
connection_string = f"mssql+pyodbc://{username}:{password}@{server}/{database}?driver=SQL+Server"

# Tạo một kết nối đến cơ sở dữ liệu
engine = create_engine(connection_string)

table_name = 'DANHGIA'

# Chỉ định cột quan tâm
columns_to_export = ['MAND', 'MASP', 'SOSAO']

# Sử dụng pandas để đọc dữ liệu từ bảng
sql_query = f'SELECT {", ".join(columns_to_export)} FROM {table_name}'
df = pd.read_sql(sql_query, engine)

ratings_utility_matrix = df.pivot_table(values='SOSAO', index='MAND', columns='MASP', fill_value=0)
# print(ratings_utility_matrix.head())

X = ratings_utility_matrix.T

SVD = TruncatedSVD(n_components=10)
decomposed_matrix = SVD.fit_transform(X)

correlation_matrix = np.corrcoef(decomposed_matrix)


# Tạo ma trận tương quan
correlation_matrix = np.corrcoef(decomposed_matrix)

# Lưu ma trận tương quan vào tệp
np.save('correlation_matrix.npy', correlation_matrix)

X.to_csv('X_matrix.csv')
print("Da train va luu du lieu")
