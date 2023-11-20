FROM quay.io/centos/centos:stream9

RUN yum -y install ncurses passwd wget java nano openssh-clients openssh-server
RUN useradd -G wheel fros && echo "user:password" | chpasswd
RUN ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"]
