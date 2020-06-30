FROM scratch
ADD amzn-container-minimal-2018.03.0.20200602.1-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-de8e94c334f37301fbb7ac231f1decb67297aa7138fb78c484cf0a2e5f930f11.tar.gz" \
 && echo "6a4587bb7665170c749dde5bfe60522fec92b691c3e190abd7ac089908fb8ae7  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
