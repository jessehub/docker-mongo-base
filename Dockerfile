FROM debian:jessie
RUN apt-get update && \
    apt-get install -y curl
RUN curl -o mongo.tgz https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian81-3.2.8.tgz && \
    tar -xzf mongo.tgz
RUN tar -C /usr/local -xzf mongo.tgz --strip-components 1
