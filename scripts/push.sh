#! /bin/bash

sudo docker tag service1:latest localhost:8082/service1:latest
sudo docker push localhost:8082/service1

sudo docker tag service2:latest localhost:8082/service2:latest
sudo docker push localhost:8082/service2

sudo docker tag service3:latest localhost:8082/service3:latest
sudo docker push localhost:8082/service3

sudo docker tag service4:latest localhost:8082/service4:latest
sudo docker push localhost:8082/service4

