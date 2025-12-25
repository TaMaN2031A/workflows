# 1. Base image (Python)
FROM python:3.11-slim

# 2. مكان الشغل جوه الكونتينر
WORKDIR /app

# 3. انسخ الملفات
COPY . .

# 4. ثبّت dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. الأمر اللي يشتغل لما الكونتينر يبدأ
CMD ["python", "hello.py"]
