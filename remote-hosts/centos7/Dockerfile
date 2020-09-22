FROM centos:centos7
MAINTAINER The CentOS Project <ajay011.sharma@hotmail.com>

RUN yum -y update; yum clean all
RUN yum -y install openssh-server java passwd; yum clean all
ADD ./start.sh /start.sh
RUN mkdir /var/run/sshd

# -f for file and its path and -N mean passphrase which is blank in this below keygen
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
#start.sh creates user and password for the system to login
RUN chmod 755 /start.sh
# EXPOSE 22
RUN ./start.sh
# This is execution point where docker starts, -D is used for bind address with port
EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
# Set default command
#CMD ["/bin/bash"]

# To check $docker ps -a
# $docker run -it remote-centos7 /bin/bash  (login as root)
# $docker run -u ajay -it remote-centos7 /bin/bash  (login as ajay)

# $ cat /etc/redhat-release
# CentOS Linux release 7.8.2003 (Core)