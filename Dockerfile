# Copyright (c) 2014 Internet Services Australia 3 Pty Limited (http://www.zanui.com.au)
# MIT License, see LICENSE.md for details.

FROM phusion/baseimage:0.9.15

MAINTAINER Zanui Engineering Team <engineering@zanui.com.au>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

# Install Ubuntu packages.
RUN apt-get update -y \
  && add-apt-repository -y ppa:nginx/stable \
  && apt-get -y install nginx

ADD templates/runit_nginx /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run

# Clean up any files used by apt-get
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Tell Docker that we are exposing the HTTP port
EXPOSE 80

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]