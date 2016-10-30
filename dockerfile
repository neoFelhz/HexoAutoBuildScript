# Dockerfile
FROM node:slim
MAINTAINER {你的DaoCloud用户名} <{你注册DaoCloud时用的邮箱}>
RUN apt-get update && apt-get install -y git ssh-client ca-certificates --no-install-recommends && rm -r /var/lib/apt/lists/*
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
RUN npm install hexo-cli -g
EXPOSE 4000
