# ansible-test-with-docker
Test your Playbook with node Docker container.

#### Build image
```
docker build -t ansible-test .

```
#### Run containers
```
docker run -ti --privileged --name node1 -d -p 5200:22 ansible-test
docker run -ti --privileged --name node2 -d -p 5200:22 ansible-test

```
#### Execute Ansible Playbook demo
```
ansible-playbook playbook.yml

```
#### Cleaning
```
docker stop node1
docker stop node2
docker rm node1
docker rm node2

```

