```shell
sudo docker build -t yiluxiangbei/heart-rate-detection:v1 -f docker/Dockerfile .
sudo docker build -t yiluxiangbei/heart-rate-detection:v2 -f docker/Dockerfile .

sudo docker run --rm -it yiluxiangbei/heart-rate-detection:v1 bash
sudo docker run -itd yiluxiangbei/heart-rate-detection:v2
```