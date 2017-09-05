FROM centos:7.2.1511

MAINTAINER John Kinsella <jlkinsel@gmail.com>

RUN yum install -y openssh-server && yum clean all

COPY sshd_config /etc/ssh/

EXPOSE 22

COPY main.sh /
ENTRYPOINT ["/main.sh"]
CMD ["default"]

