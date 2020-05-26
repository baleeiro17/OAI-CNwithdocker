FROM oai-base

RUN adduser l2nfapi
RUN adduser l2nfapi sudo
RUN echo "l2nfapi      ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER l2nfapi
USER root

RUN sudo su
RUN cd oai-cn/scripts && DEBIAN_FRONTEND=noninteractive ./build_spgw -i -f
COPY spgw.conf /usr/local/etc/oai/spgw.conf
RUN cd oai-cn/scripts && ./build_spgw --clean


