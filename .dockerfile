FROM ubuntu:16.04
MAINTAINER Adam Albright <aalbright425@gmail.com>

# Since we are not using an interactive shell, these make the commands perform happily.
ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive

# install some dependencies
RUN apt-get update && \
    apt-get install -y --force-yes \
    apt-transport-https \
    ssh-client \
    build-essential \
    curl \
    ca-certificates \
    git \
    libicu-dev \
    'libicu[0-9][0-9].*' \
    lsb-release \
    python-all \
    python-pip \
    rlwrap \
    apt-utils \
    build-essential \
    libssl-dev \
    curl \
    telnet

# Get Latest Version of Pip
RUN pip install --upgrade pip


# install nodejs 8
# change url to your desire nodejs version
RUN curl https://deb.nodesource.com/setup_8.x -o /tmp/nodesource_setup.sh
RUN chmod u+x /tmp/nodesource_setup.sh && ./tmp/nodesource_setup.sh
RUN apt-get install nodejs




# https://www.ctl.io/developers/blog/post/dockerfile-entrypoint-vs-cmd/
CMD ["bash"]
