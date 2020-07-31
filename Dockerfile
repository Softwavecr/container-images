FROM scratch
ADD amzn2-container-raw-2.0.20200722.0-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-4a2709d0b184c9b7a5e4b01c08f0a95ddb949a8af3fb12847920b6fc8cad8033.tar.gz" \
 && echo "d51679d0ed0ab3b0a8eb3c2a40b03e5c5e6d7b11a13fa6f729b2461204dfb1b0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
