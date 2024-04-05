import pandas as pd
import numpy as np
import sklearn
import sys
from sklearn.decomposition import TruncatedSVD
from sqlalchemy import create_engine
import numpy as np


X = pd.read_csv('X_matrix.csv',index_col=0)
correlation_matrix = np.load('correlation_matrix.npy')

# Đọc tham số truyền từ controller để lấy sp trong đơn hàng gần nhất của user
input_product_str = sys.argv[1]
print(input_product_str)

# Loại bỏ dấu ngoặc vuông và dấu cách trong chuỗi
cleaned_str = input_product_str.replace("[", "").replace("]", "").replace(" ", "")

# Tách chuỗi thành danh sách các mã sản phẩm
product_list = cleaned_str.split(",")

# Duyệt qua danh sách sản phẩm đầu vào và đề xuất cho từng sản phẩm
for product_name in product_list:
    product_names = list(X.index)
    if product_name in product_names:
        product_ID = product_names.index(product_name)
        correlation_product_ID = correlation_matrix[product_ID]

        Recommend = list(X.index[correlation_product_ID > 0.7])

        # Loại bỏ sản phẩm đã mua
        Recommend.remove(product_name)

        # In danh sách sản phẩm đề xuất cho mỗi sản phẩm đầu vào
        for recommended_product in Recommend:
            print("name:", recommended_product)
