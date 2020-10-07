#!/bin/bash

docker build -t ansible-test .
docker run -ti --privileged --name node1 -d -p 5000:22 ansible-test
ansible-playbook -i inventory.ini playbook.yml

docker stop node1
docker rm node1
