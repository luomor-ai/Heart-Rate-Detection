FROM python:3.6
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
RUN chmod +x docker/deploy.sh
#CMD ["bash"]
#CMD ["tail", "-f", "/dev/null"]
#RUN /app/docker/deploy.sh
ENTRYPOINT ["/app/docker/deploy.sh"]