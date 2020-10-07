# ansible-test-with-docker
Test your Playbook with node Docker container.

# Build image
```
docker build -t ansible-test .

```
# Run container
```
docker run -ti --privileged --name node1 -d -p 5000:22 ansible-test

```
# Execute Ansible Playbook demo
```
ansible-playbook -i inventory.ini -l node1 playbook.yml

```
# Cleaning
```
docker stop node1
docker rm node1

```

