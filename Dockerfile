FROM ubuntu:14.04

RUN \
  apt-get update && apt-get install -y \
    wget \
    vim

RUN \
  wget https://packages.chef.io/stable/ubuntu/14.04/chefdk_0.14.25-1_amd64.deb && \
  dpkg -i chefdk_0.14.25-1_amd64.deb && \
  rm chefdk_0.14.25-1_amd64.deb

RUN \
  chef gem install bundler

RUN \
  chef gem install chef-provisioning-vsphere

RUN \
  locale-gen en_US.UTF-8

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8

CMD ["bash"]
