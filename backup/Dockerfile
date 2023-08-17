FROM python:slim
ENV url=https://github.com/AirportR/FullTclash.git
WORKDIR /app
RUN apt update && \
    apt install git && \
    git clone -b backend $url . && \
    pip3 install --no-cache-dir -r requirements.txt && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' >/etc/timezone && \
    chmod +x docker-entrypoint.sh 
ENTRYPOINT ["sh" "docker-entrypoint.sh"]
