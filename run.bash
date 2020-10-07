#!/bin/bash

docker build -t ansible-test .
docker run -ti --privileged --name node1 -d -p 5100:22 ansible-test
docker run -ti --privileged --name node2 -d -p 5200:22 ansible-test
ansible-playbook playbook.yml

docker stop node1
docker stop node2
docker rm node1
docker rm node2
