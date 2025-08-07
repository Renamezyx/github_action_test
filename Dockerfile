# 使用官方 Python 3.12 镜像作为基础镜像
FROM python:3.12

# 设置工作目录
WORKDIR /app

# 复制依赖文件并安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目代码
COPY . .

# 暴露容器端口
EXPOSE 5001

# 启动 Flask 应用
CMD ["python", "app.py"]
