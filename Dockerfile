FROM debian:9

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y apt-transport-https 

RUN apt-get install -y ruby ruby-dev rubygems build-essential
RUN gem install --no-ri --no-rdoc fpm
RUN fpm --version