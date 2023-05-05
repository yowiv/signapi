FROM python:3.9-alpine
WORKDIR /app
EXPOSE 17840
RUN pip3 install flask -i https://mirrors.ustc.edu.cn/pypi/web/simple
COPY . /app
RUN chmod 777 /app/*
ENTRYPOINT ["python3", "signapi.py"]