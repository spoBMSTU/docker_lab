FROM centos:7
RUN yum -y update && \
    yum group install -y "Development Tools" && \
    yum install -y git
RUN mkdir proj_with_mistake && \
    cd ./proj_with_mistake
