FROM ubuntu:20.04

#Set Timezone or get hang during the docker build...
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Install packages
RUN apt-get update && \
    apt-get -y install build-essential && \
    apt-get -y install git
    
#Cloning repository
RUN cd /home && \
    git clone https://github.com/spoBMSTU/docker_lab.git && \
    cd ./docker_lab/calculate_hash
