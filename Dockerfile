FROM ubuntu:16.04

RUN  DEBIAND_FRONTEND=noninteractive apt-get -y update && apt-get -y install git nano net-tools iputils-ping sudo cmake autoconf gcc libtool pkg-config libmnl-dev libyaml-dev \
apt-utils 
COPY oai-cn /oai-cn
RUN cd oai-cn && git checkout 724542d0b59797b010af8c5df15af7f669c1e838