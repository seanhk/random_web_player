# 使用官方 Python 镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /random_web_player

# 复制项目依赖文件
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目代码到容器中
COPY . .

# 暴露应用运行的端口
EXPOSE 5000

# 启动应用程序
CMD ["python", "random_api.py"]
