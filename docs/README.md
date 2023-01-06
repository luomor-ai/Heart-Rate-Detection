```shell
sudo docker run --rm -it --privileged -v $(pwd):/app python:3.6 /bin/bash
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
docker/deploy.sh

sudo docker build -t yiluxiangbei/heart-rate-detection:v1 -f docker/Dockerfile .
sudo docker build -t yiluxiangbei/heart-rate-detection:v2 -f docker/Dockerfile .

sudo docker push yiluxiangbei/heart-rate-detection:v1
sudo docker push yiluxiangbei/heart-rate-detection:v2

sudo docker run --rm -it -p 8011:8000 -v $(pwd):/app --privileged yiluxiangbei/heart-rate-detection:v1 bash

sudo docker run --rm -it -p 8011:8000 --privileged yiluxiangbei/heart-rate-detection:v1 bash
/app/docker/deploy.sh
nohup /app/docker/deploy.sh &
curl 'localhost:8000'

sudo docker run --rm -it -p 8011:8000 yiluxiangbei/heart-rate-detection:v2 --entrypoint /bin/bash
sudo docker run --rm -it -p 8011:8000 yiluxiangbei/heart-rate-detection:v2

sudo docker run --name heart-rate -itd -p 8011:8000 yiluxiangbei/heart-rate-detection:v2
sudo docker run --name heart-rate -itd -v $(pwd):/app -p 8011:8000 yiluxiangbei/heart-rate-detection:v2
docker ps|grep heart
docker ps -a|grep heart
docker logs -f heart-rate

sudo docker stop heart-rate
sudo docker start heart-rate

sudo docker stop heart-rate
sudo docker rm heart-rate

https://heart.7otech.com/
ws://heart.7otech.com/echo
wss://heart.7otech.com/echo
https://heart.7otech.com/static/js/websocket.js

docker rmi `docker images | grep none | awk '{print $3}'`
```