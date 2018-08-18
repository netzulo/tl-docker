# tl-docker
Testlink Docker Custom Image


## How to install ?

+ 1. Build the image: ```docker build -t netzuloqa/testlink --file ./DockerFile .```
+ 2. Run new container from new image ( docker-compose): ```docker-compose up```
+ 2.1 Ensure container it's up and running: ```docker ps -a```
+ 2.2 If not, start container with: ```docker run -it -p 88:80 IMAGE_ID /bin/bash```


## How to enter to docker image ?


+ 1. Ensure you have image up and running with : ```docker ps```
+ 2. Enter to container using default image tty : ```docker exec -it CONTAINER_ID /bin/bash```

### Delete temp images while development

+ Ensure what you need to delete it: ```docker ps -a && docker images -a```

### Using an alias to rebuild fast while development

+ Add this alias to your  ```~/.bashrc``` : ```alias tl-docker='docker build -t netzuloqa/testlink --file ./DockerFile . && docker run -it -p 88:80 netzuloqa/testlink /bin/bash'```

