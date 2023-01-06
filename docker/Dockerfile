FROM python:3.6
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
#CMD ["bash"]
CMD ["tail", "-f", "/dev/null"]
#CMD ["docker/deploy.sh"]