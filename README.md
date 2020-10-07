# ansible-test-with-docker
Test your Playbook with node Docker container.

```

#!/bin/bash

# build image
docker build -t ansible-test .

# run container
docker run -ti --privileged --name node1 -d -p 5000:22 ansible-test

# exec ansible
ansible-playbook -i inventory.ini playbook.yml

# clean
docker stop node1
docker rm node1

```

