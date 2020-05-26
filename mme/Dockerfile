FROM oai-base

RUN adduser l2nfapi
RUN adduser l2nfapi sudo
RUN echo "l2nfapi      ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER l2nfapi
USER root

RUN sudo su
RUN cd oai-cn/scripts && DEBIAN_FRONTEND=noninteractive ./build_mme -i -f
COPY mme.conf /usr/local/etc/oai/mme.conf 
COPY mme_fd.conf /usr/local/etc/oai/freeDiameter/mme_fd.conf 
RUN cd oai-cn/scripts && ./build_mme --clean
COPY script.sh /script.sh
RUN chmod +x /script.sh

