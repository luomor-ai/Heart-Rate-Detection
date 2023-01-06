```shell
sudo docker run --rm -it --privileged -v $(pwd):/app python:3.6 /bin/bash
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
docker/deploy.sh

sudo docker build -t yiluxiangbei/heart-rate-detection:v1 -f docker/Dockerfile .
sudo docker build -t yiluxiangbei/heart-rate-detection:v2 -f docker/Dockerfile .

sudo docker push yiluxiangbei/heart-rate-detection:v1
sudo docker push yiluxiangbei/heart-rate-detection:v2

sudo docker run --rm -it yiluxiangbei/heart-rate-detection:v1 bash
sudo docker run --name heart-rate -itd -p 8011:8000 yiluxiangbei/heart-rate-detection:v2
```