FROM oai-base

RUN adduser l2nfapi
RUN adduser l2nfapi sudo
RUN echo "l2nfapi      ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER l2nfapi
USER root

RUN sudo su
RUN cd oai-cn/scripts && DEBIAN_FRONTEND=noninteractive ./build_hss -i -F 
RUN cd oai-cn/scripts && ./build_hss
COPY hss.conf /usr/local/etc/oai/hss.conf 
COPY script.sh /script.sh
RUN chmod +x /script.sh
RUN sudo ./root/script.sh
