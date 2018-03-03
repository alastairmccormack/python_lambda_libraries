# Used to build pycrypto libraries for running on AWS Lambda

FROM amazonlinux:2017.12

RUN yum -y update
RUN yum -y upgrade
RUN amazon-linux-extras install python3
RUN yum -y group install "Development Tools"
RUN yum -y install python3-devel


# CHANGEME: add libraries here
RUN pip3 install pycrypto

ENTRYPOINT cp -r /usr/lib64/python3.6/site-packages/* /tmp/site-packages/