#!/bin/bash

echo "--------------- 서버 배포 시작 -----------------"
docker stop nhj-server || true
docker rm nhj-server || true
docker pull 376129840316.dkr.ecr.ap-northeast-2.amazonaws.com/nhj-server:latest
docker run -d --name nhj-server -p 8080:8080 376129840316.dkr.ecr.ap-northeast-2.amazonaws.com/nhj-server:latest
echo "--------------- 서버 배포 끝 -----------------"