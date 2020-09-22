er-compose build
docker-compose up -d
# Creating network "remote-hosts_net" with the default driver
# Creating remote-centos7  ... done
# Creating remote-ubuntu20 ... done       

docker run -d -P remote-ubuntu20  # get the docker port of SSH
docker run -d -P remote-ubuntu20  #get the docker port of ssh

To check the port
docker ps

To test ssh
ssh root@jenkins.cloudzone.today -p 32772  #port is taken from docker ps
ssh root@jenkins.cloudzone.today -p 32773 #port is taken from docker ps
This port will be used in node configuration. 

You can check the java --version after SSH to the machine. 
Which java (to get the directory of installed java)
