import math
import os

from tensorflow.keras.preprocessing import image
from tensorflow.keras.applications.vgg16 import VGG16, preprocess_input
from tensorflow.keras.models import  Model

from PIL import Image
import pickle
import numpy as np

# Ham tao model
def get_extract_model():
    vgg16_model = VGG16(weights="imagenet")
    extract_model = Model(inputs=vgg16_model.inputs, outputs = vgg16_model.get_layer("fc1").output)
    return extract_model

# Ham tien xu ly, chuyen doi hinh anh thanh tensor
def image_preprocess(img):
    img = img.resize((224,224))
    img = img.convert("RGB")
    x = image.img_to_array(img)
    x = np.expand_dims(x, axis=0)
    x = preprocess_input(x)
    return x

def extract_vector(model, image_path):
    print("Xu ly : ", image_path)
    img = Image.open(image_path)
    img_tensor = image_preprocess(img)

    # Trich dac trung
    vector = model.predict(img_tensor)[0]
    # Chuan hoa vector = chia chia L2 norm (tu google search)
    vector = vector / np.linalg.norm(vector)
    return vector

# Dinh nghia anh can tim kiem
import sys
search_image = str(sys.argv[1])

# Khoi tao model
model = get_extract_model()

# Trich dac trung anh search
search_vector = extract_vector(model, search_image)

# Load 4700 vector tu vectors.pkl ra bien
vectors = pickle.load(open("vectors.pkl","rb"))
paths = pickle.load(open("paths.pkl","rb"))

# Tinh khoang cach tu search_vector den tat ca cac vector
distance = np.linalg.norm(vectors - search_vector, axis=1)

# Sap xep va lay ra K vector co khoang cach ngan nhat
K = 16
ids = np.argsort(distance)[:K]

nearest_image_names = []
for id in ids:
    if distance[id] <= 0.66:
        image_path = paths[id]
        image_name = os.path.basename(image_path)  # Lấy tên tệp ảnh từ đường dẫn
        image_name_without_extension = os.path.splitext(image_name)[0]  # Loại bỏ phần mở rộng ".jpg"
        nearest_image_names.append(image_name_without_extension)

# Trả về danh sách các tên tệp ảnh phù hợp
for name in nearest_image_names:
    print("name:", name)