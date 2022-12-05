FROM jenkins/jenkins:lts

USER root
RUN apt-get install -y docker.io
RUN groupadd docker
RUN usermod -aG docker jenkins
RUN chmod 666 /var/run/docker.sock
